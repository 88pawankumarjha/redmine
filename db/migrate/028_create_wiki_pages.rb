<<<<<<< HEAD
class CreateWikiPages < ActiveRecord::Migration
  def self.up
    create_table :wiki_pages do |t|
      t.column :wiki_id, :integer, :null => false
      t.column :title, :string, :limit => 255, :null => false
      t.column :created_on, :datetime, :null => false
    end
    add_index :wiki_pages, [:wiki_id, :title], :name => :wiki_pages_wiki_id_title
  end

  def self.down
    drop_table :wiki_pages
  end
end
=======
class CreateWikiPages < ActiveRecord::Migration
  def self.up
    create_table :wiki_pages do |t|
      t.column :wiki_id, :integer, :null => false
      t.column :title, :string, :limit => 255, :null => false
      t.column :created_on, :datetime, :null => false
    end
    add_index :wiki_pages, [:wiki_id, :title], :name => :wiki_pages_wiki_id_title
  end

  def self.down
    drop_table :wiki_pages
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
