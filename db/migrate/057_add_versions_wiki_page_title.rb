<<<<<<< HEAD
class AddVersionsWikiPageTitle < ActiveRecord::Migration
  def self.up
    add_column :versions, :wiki_page_title, :string
  end

  def self.down
    remove_column :versions, :wiki_page_title
  end
end
=======
class AddVersionsWikiPageTitle < ActiveRecord::Migration
  def self.up
    add_column :versions, :wiki_page_title, :string
  end

  def self.down
    remove_column :versions, :wiki_page_title
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
