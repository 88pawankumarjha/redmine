<<<<<<< HEAD
class AddWikiPagesProtected < ActiveRecord::Migration
  def self.up
    add_column :wiki_pages, :protected, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :wiki_pages, :protected
  end
end
=======
class AddWikiPagesProtected < ActiveRecord::Migration
  def self.up
    add_column :wiki_pages, :protected, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :wiki_pages, :protected
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
