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

require File.expand_path('../../../test_helper', __FILE__)

class Redmine::ApiTest::IssueCategoriesTest < Redmine::ApiTest::Base
  fixtures :projects, :users, :issue_categories, :issues,
           :roles,
           :member_roles,
           :members,
           :enabled_modules

  def setup
    Setting.rest_api_enabled = '1'
  end

  test "GET /projects/:project_id/issue_categories.xml should return the issue categories" do
    get '/projects/1/issue_categories.xml', {}, credentials('jsmith')
    assert_response :success
    assert_equal 'application/xml', @response.content_type
    assert_tag :tag => 'issue_categories',
      :child => {:tag => 'issue_category', :child => {:tag => 'id', :content => '2'}}
  end

  test "GET /issue_categories/:id.xml should return the issue category" do
    get '/issue_categories/2.xml', {}, credentials('jsmith')
    assert_response :success
    assert_equal 'application/xml', @response.content_type
    assert_tag :tag => 'issue_category',
      :child => {:tag => 'id', :content => '2'}
  end

  test "POST /projects/:project_id/issue_categories.xml should return create issue category" do
    assert_difference 'IssueCategory.count' do
      post '/projects/1/issue_categories.xml', {:issue_category => {:name => 'API'}}, credentials('jsmith')
    end
    assert_response :created
    assert_equal 'application/xml', @response.content_type

    category = IssueCategory.first(:order => 'id DESC')
    assert_equal 'API', category.name
    assert_equal 1, category.project_id
  end

  test "POST /projects/:project_id/issue_categories.xml with invalid parameters should return errors" do
    assert_no_difference 'IssueCategory.count' do
      post '/projects/1/issue_categories.xml', {:issue_category => {:name => ''}}, credentials('jsmith')
    end
    assert_response :unprocessable_entity
    assert_equal 'application/xml', @response.content_type

    assert_tag 'errors', :child => {:tag => 'error', :content => "Name can't be blank"}
  end

  test "PUT /issue_categories/:id.xml with valid parameters should update the issue category" do
    assert_no_difference 'IssueCategory.count' do
      put '/issue_categories/2.xml', {:issue_category => {:name => 'API Update'}}, credentials('jsmith')
    end
    assert_response :ok
    assert_equal '', @response.body
    assert_equal 'API Update', IssueCategory.find(2).name
  end

  test "PUT /issue_categories/:id.xml with invalid parameters should return errors" do
    assert_no_difference 'IssueCategory.count' do
      put '/issue_categories/2.xml', {:issue_category => {:name => ''}}, credentials('jsmith')
    end
    assert_response :unprocessable_entity
    assert_equal 'application/xml', @response.content_type

    assert_tag 'errors', :child => {:tag => 'error', :content => "Name can't be blank"}
  end

  test "DELETE /issue_categories/:id.xml should destroy the issue category" do
    assert_difference 'IssueCategory.count', -1 do
      delete '/issue_categories/1.xml', {}, credentials('jsmith')
    end
    assert_response :ok
    assert_equal '', @response.body
    assert_nil IssueCategory.find_by_id(1)
  end
    
  test "DELETE /issue_categories/:id.xml should reassign issues with :reassign_to_id param" do
    issue_count = Issue.where(:category_id => 1).count
    assert issue_count > 0

    assert_difference 'IssueCategory.count', -1 do
      assert_difference 'Issue.where(:category_id => 2).count', 3 do
        delete '/issue_categories/1.xml', {:reassign_to_id => 2}, credentials('jsmith')
      end
    end
    assert_response :ok
    assert_equal '', @response.body
    assert_nil IssueCategory.find_by_id(1)
  end
end
