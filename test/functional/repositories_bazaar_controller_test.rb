<<<<<<< HEAD
# Redmine - project management software
# Copyright (C) 2006-2014  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require File.expand_path('../../test_helper', __FILE__)

class RepositoriesBazaarControllerTest < ActionController::TestCase
  tests RepositoriesController

  fixtures :projects, :users, :roles, :members, :member_roles,
           :repositories, :enabled_modules

  REPOSITORY_PATH = Rails.root.join('tmp/test/bazaar_repository').to_s
  REPOSITORY_PATH_TRUNK = File.join(REPOSITORY_PATH, "trunk")
  PRJ_ID = 3
  CHAR_1_UTF8_HEX   = "\xc3\x9c"

  def setup
    User.current = nil
    @project = Project.find(PRJ_ID)
    @repository = Repository::Bazaar.create(
                    :project      => @project,
                    :url          => REPOSITORY_PATH_TRUNK,
                    :log_encoding => 'UTF-8')
    assert @repository
    @char_1_utf8 = CHAR_1_UTF8_HEX.dup
    if @char_1_utf8.respond_to?(:force_encoding)
      @char_1_utf8.force_encoding('UTF-8')
    end
  end

  if File.directory?(REPOSITORY_PATH)
    def test_get_new
      @request.session[:user_id] = 1
      @project.repository.destroy
      get :new, :project_id => 'subproject1', :repository_scm => 'Bazaar'
      assert_response :success
      assert_template 'new'
      assert_kind_of Repository::Bazaar, assigns(:repository)
      assert assigns(:repository).new_record?
    end

    def test_browse_root
      get :show, :id => PRJ_ID
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal 2, assigns(:entries).size
      assert assigns(:entries).detect {|e| e.name == 'directory' && e.kind == 'dir'}
      assert assigns(:entries).detect {|e| e.name == 'doc-mkdir.txt' && e.kind == 'file'}
    end

    def test_browse_directory
      get :show, :id => PRJ_ID, :path => repository_path_hash(['directory'])[:param]
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal ['doc-ls.txt', 'document.txt', 'edit.png'], assigns(:entries).collect(&:name)
      entry = assigns(:entries).detect {|e| e.name == 'edit.png'}
      assert_not_nil entry
      assert_equal 'file', entry.kind
      assert_equal 'directory/edit.png', entry.path
    end

    def test_browse_at_given_revision
      get :show, :id => PRJ_ID, :path => repository_path_hash([])[:param],
          :rev => 3
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal ['directory', 'doc-deleted.txt', 'doc-ls.txt', 'doc-mkdir.txt'],
                   assigns(:entries).collect(&:name)
    end

    def test_changes
      get :changes, :id => PRJ_ID,
          :path => repository_path_hash(['doc-mkdir.txt'])[:param]
      assert_response :success
      assert_template 'changes'
      assert_tag :tag => 'h2', :content => 'doc-mkdir.txt'
    end

    def test_entry_show
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory', 'doc-ls.txt'])[:param]
      assert_response :success
      assert_template 'entry'
      # Line 19
      assert_tag :tag => 'th',
                 :content => /29/,
                 :attributes => { :class => /line-num/ },
                 :sibling => { :tag => 'td', :content => /Show help message/ }
    end

    def test_entry_download
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory', 'doc-ls.txt'])[:param],
          :format => 'raw'
      assert_response :success
      # File content
      assert @response.body.include?('Show help message')
    end

    def test_directory_entry
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory'])[:param]
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entry)
      assert_equal 'directory', assigns(:entry).name
    end

    def test_diff
      # Full diff of changeset 3
      ['inline', 'sbs'].each do |dt|
        get :diff, :id => PRJ_ID, :rev => 3, :type => dt
        assert_response :success
        assert_template 'diff'
        # Line 11 removed
        assert_tag :tag => 'th',
                   :content => '11',
                   :sibling => { :tag => 'td',
                                 :attributes => { :class => /diff_out/ },
                                 :content => /Display more information/ }
      end
    end

    def test_annotate
      get :annotate, :id => PRJ_ID,
          :path => repository_path_hash(['doc-mkdir.txt'])[:param]
      assert_response :success
      assert_template 'annotate'
      assert_select "th.line-num", :text => '2' do
        assert_select "+ td.revision" do
          assert_select "a", :text => '3'
          assert_select "+ td.author", :text => "jsmith@" do
            assert_select "+ td",
                          :text => "Main purpose:"
          end
        end
      end
    end

    def test_annotate_author_escaping
      repository = Repository::Bazaar.create(
                    :project      => @project,
                    :url          => File.join(REPOSITORY_PATH, "author_escaping"),
                    :identifier => 'author_escaping',
                    :log_encoding => 'UTF-8')
      assert repository
      get :annotate, :id => PRJ_ID, :repository_id => 'author_escaping',
          :path => repository_path_hash(['author-escaping-test.txt'])[:param]
      assert_response :success
      assert_template 'annotate'
      assert_select "th.line-num", :text => '1' do
        assert_select "+ td.revision" do
          assert_select "a", :text => '2'
          assert_select "+ td.author", :text => "test &amp;" do
            assert_select "+ td",
                          :text => "author escaping test"
          end
        end
      end
    end

    if REPOSITORY_PATH.respond_to?(:force_encoding)
      def test_annotate_author_non_ascii
        log_encoding = nil
        if Encoding.locale_charmap == "UTF-8" ||
             Encoding.locale_charmap == "ISO-8859-1"
          log_encoding = Encoding.locale_charmap
        end
        unless log_encoding.nil?
          repository = Repository::Bazaar.create(
                        :project      => @project,
                        :url          => File.join(REPOSITORY_PATH, "author_non_ascii"),
                        :identifier => 'author_non_ascii',
                        :log_encoding => log_encoding)
          assert repository
          get :annotate, :id => PRJ_ID, :repository_id => 'author_non_ascii',
              :path => repository_path_hash(['author-non-ascii-test.txt'])[:param]
          assert_response :success
          assert_template 'annotate'
          assert_select "th.line-num", :text => '1' do
            assert_select "+ td.revision" do
              assert_select "a", :text => '2'
              assert_select "+ td.author", :text => "test #{@char_1_utf8}" do
                assert_select "+ td",
                              :text => "author non ASCII test"
              end
            end
          end
        end
      end
    end

    def test_destroy_valid_repository
      @request.session[:user_id] = 1 # admin
      assert_equal 0, @repository.changesets.count
      @repository.fetch_changesets
      assert @repository.changesets.count > 0

      assert_difference 'Repository.count', -1 do
        delete :destroy, :id => @repository.id
      end
      assert_response 302
      @project.reload
      assert_nil @project.repository
    end

    def test_destroy_invalid_repository
      @request.session[:user_id] = 1 # admin
      @project.repository.destroy
      @repository = Repository::Bazaar.create!(
                    :project      => @project,
                    :url          => "/invalid",
                    :log_encoding => 'UTF-8')
      @repository.fetch_changesets
      @repository.reload
      assert_equal 0, @repository.changesets.count

      assert_difference 'Repository.count', -1 do
        delete :destroy, :id => @repository.id
      end
      assert_response 302
      @project.reload
      assert_nil @project.repository
    end
  else
    puts "Bazaar test repository NOT FOUND. Skipping functional tests !!!"
    def test_fake; assert true end
  end
end
=======
# Redmine - project management software
# Copyright (C) 2006-2014  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require File.expand_path('../../test_helper', __FILE__)

class RepositoriesBazaarControllerTest < ActionController::TestCase
  tests RepositoriesController

  fixtures :projects, :users, :roles, :members, :member_roles,
           :repositories, :enabled_modules

  REPOSITORY_PATH = Rails.root.join('tmp/test/bazaar_repository').to_s
  REPOSITORY_PATH_TRUNK = File.join(REPOSITORY_PATH, "trunk")
  PRJ_ID = 3
  CHAR_1_UTF8_HEX   = "\xc3\x9c"

  def setup
    User.current = nil
    @project = Project.find(PRJ_ID)
    @repository = Repository::Bazaar.create(
                    :project      => @project,
                    :url          => REPOSITORY_PATH_TRUNK,
                    :log_encoding => 'UTF-8')
    assert @repository
    @char_1_utf8 = CHAR_1_UTF8_HEX.dup
    if @char_1_utf8.respond_to?(:force_encoding)
      @char_1_utf8.force_encoding('UTF-8')
    end
  end

  if File.directory?(REPOSITORY_PATH)
    def test_get_new
      @request.session[:user_id] = 1
      @project.repository.destroy
      get :new, :project_id => 'subproject1', :repository_scm => 'Bazaar'
      assert_response :success
      assert_template 'new'
      assert_kind_of Repository::Bazaar, assigns(:repository)
      assert assigns(:repository).new_record?
    end

    def test_browse_root
      get :show, :id => PRJ_ID
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal 2, assigns(:entries).size
      assert assigns(:entries).detect {|e| e.name == 'directory' && e.kind == 'dir'}
      assert assigns(:entries).detect {|e| e.name == 'doc-mkdir.txt' && e.kind == 'file'}
    end

    def test_browse_directory
      get :show, :id => PRJ_ID, :path => repository_path_hash(['directory'])[:param]
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal ['doc-ls.txt', 'document.txt', 'edit.png'], assigns(:entries).collect(&:name)
      entry = assigns(:entries).detect {|e| e.name == 'edit.png'}
      assert_not_nil entry
      assert_equal 'file', entry.kind
      assert_equal 'directory/edit.png', entry.path
    end

    def test_browse_at_given_revision
      get :show, :id => PRJ_ID, :path => repository_path_hash([])[:param],
          :rev => 3
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entries)
      assert_equal ['directory', 'doc-deleted.txt', 'doc-ls.txt', 'doc-mkdir.txt'],
                   assigns(:entries).collect(&:name)
    end

    def test_changes
      get :changes, :id => PRJ_ID,
          :path => repository_path_hash(['doc-mkdir.txt'])[:param]
      assert_response :success
      assert_template 'changes'
      assert_tag :tag => 'h2', :content => 'doc-mkdir.txt'
    end

    def test_entry_show
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory', 'doc-ls.txt'])[:param]
      assert_response :success
      assert_template 'entry'
      # Line 19
      assert_tag :tag => 'th',
                 :content => /29/,
                 :attributes => { :class => /line-num/ },
                 :sibling => { :tag => 'td', :content => /Show help message/ }
    end

    def test_entry_download
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory', 'doc-ls.txt'])[:param],
          :format => 'raw'
      assert_response :success
      # File content
      assert @response.body.include?('Show help message')
    end

    def test_directory_entry
      get :entry, :id => PRJ_ID,
          :path => repository_path_hash(['directory'])[:param]
      assert_response :success
      assert_template 'show'
      assert_not_nil assigns(:entry)
      assert_equal 'directory', assigns(:entry).name
    end

    def test_diff
      # Full diff of changeset 3
      ['inline', 'sbs'].each do |dt|
        get :diff, :id => PRJ_ID, :rev => 3, :type => dt
        assert_response :success
        assert_template 'diff'
        # Line 11 removed
        assert_tag :tag => 'th',
                   :content => '11',
                   :sibling => { :tag => 'td',
                                 :attributes => { :class => /diff_out/ },
                                 :content => /Display more information/ }
      end
    end

    def test_annotate
      get :annotate, :id => PRJ_ID,
          :path => repository_path_hash(['doc-mkdir.txt'])[:param]
      assert_response :success
      assert_template 'annotate'
      assert_select "th.line-num", :text => '2' do
        assert_select "+ td.revision" do
          assert_select "a", :text => '3'
          assert_select "+ td.author", :text => "jsmith@" do
            assert_select "+ td",
                          :text => "Main purpose:"
          end
        end
      end
    end

    def test_annotate_author_escaping
      repository = Repository::Bazaar.create(
                    :project      => @project,
                    :url          => File.join(REPOSITORY_PATH, "author_escaping"),
                    :identifier => 'author_escaping',
                    :log_encoding => 'UTF-8')
      assert repository
      get :annotate, :id => PRJ_ID, :repository_id => 'author_escaping',
          :path => repository_path_hash(['author-escaping-test.txt'])[:param]
      assert_response :success
      assert_template 'annotate'
      assert_select "th.line-num", :text => '1' do
        assert_select "+ td.revision" do
          assert_select "a", :text => '2'
          assert_select "+ td.author", :text => "test &amp;" do
            assert_select "+ td",
                          :text => "author escaping test"
          end
        end
      end
    end

    if REPOSITORY_PATH.respond_to?(:force_encoding)
      def test_annotate_author_non_ascii
        log_encoding = nil
        if Encoding.locale_charmap == "UTF-8" ||
             Encoding.locale_charmap == "ISO-8859-1"
          log_encoding = Encoding.locale_charmap
        end
        unless log_encoding.nil?
          repository = Repository::Bazaar.create(
                        :project      => @project,
                        :url          => File.join(REPOSITORY_PATH, "author_non_ascii"),
                        :identifier => 'author_non_ascii',
                        :log_encoding => log_encoding)
          assert repository
          get :annotate, :id => PRJ_ID, :repository_id => 'author_non_ascii',
              :path => repository_path_hash(['author-non-ascii-test.txt'])[:param]
          assert_response :success
          assert_template 'annotate'
          assert_select "th.line-num", :text => '1' do
            assert_select "+ td.revision" do
              assert_select "a", :text => '2'
              assert_select "+ td.author", :text => "test #{@char_1_utf8}" do
                assert_select "+ td",
                              :text => "author non ASCII test"
              end
            end
          end
        end
      end
    end

    def test_destroy_valid_repository
      @request.session[:user_id] = 1 # admin
      assert_equal 0, @repository.changesets.count
      @repository.fetch_changesets
      assert @repository.changesets.count > 0

      assert_difference 'Repository.count', -1 do
        delete :destroy, :id => @repository.id
      end
      assert_response 302
      @project.reload
      assert_nil @project.repository
    end

    def test_destroy_invalid_repository
      @request.session[:user_id] = 1 # admin
      @project.repository.destroy
      @repository = Repository::Bazaar.create!(
                    :project      => @project,
                    :url          => "/invalid",
                    :log_encoding => 'UTF-8')
      @repository.fetch_changesets
      @repository.reload
      assert_equal 0, @repository.changesets.count

      assert_difference 'Repository.count', -1 do
        delete :destroy, :id => @repository.id
      end
      assert_response 302
      @project.reload
      assert_nil @project.repository
    end
  else
    puts "Bazaar test repository NOT FOUND. Skipping functional tests !!!"
    def test_fake; assert true end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
