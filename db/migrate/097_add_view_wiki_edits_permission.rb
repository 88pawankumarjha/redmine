<<<<<<< HEAD
class AddViewWikiEditsPermission < ActiveRecord::Migration
  def self.up
    Role.all.each do |r|
      r.add_permission!(:view_wiki_edits) if r.has_permission?(:view_wiki_pages)
    end
  end

  def self.down
    Role.all.each do |r|
      r.remove_permission!(:view_wiki_edits)
    end
  end
end
=======
class AddViewWikiEditsPermission < ActiveRecord::Migration
  def self.up
    Role.all.each do |r|
      r.add_permission!(:view_wiki_edits) if r.has_permission?(:view_wiki_pages)
    end
  end

  def self.down
    Role.all.each do |r|
      r.remove_permission!(:view_wiki_edits)
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
