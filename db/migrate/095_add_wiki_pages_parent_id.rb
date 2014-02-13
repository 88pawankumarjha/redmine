<<<<<<< HEAD
class AddWikiPagesParentId < ActiveRecord::Migration
  def self.up
    add_column :wiki_pages, :parent_id, :integer, :default => nil
  end

  def self.down
    remove_column :wiki_pages, :parent_id
  end
end
=======
class AddWikiPagesParentId < ActiveRecord::Migration
  def self.up
    add_column :wiki_pages, :parent_id, :integer, :default => nil
  end

  def self.down
    remove_column :wiki_pages, :parent_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
