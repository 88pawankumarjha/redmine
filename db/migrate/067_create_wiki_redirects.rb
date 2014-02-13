<<<<<<< HEAD
class CreateWikiRedirects < ActiveRecord::Migration
  def self.up
    create_table :wiki_redirects do |t|
      t.column :wiki_id, :integer, :null => false
      t.column :title, :string
      t.column :redirects_to, :string
      t.column :created_on, :datetime, :null => false
    end
    add_index :wiki_redirects, [:wiki_id, :title], :name => :wiki_redirects_wiki_id_title
  end

  def self.down
    drop_table :wiki_redirects
  end
end
=======
class CreateWikiRedirects < ActiveRecord::Migration
  def self.up
    create_table :wiki_redirects do |t|
      t.column :wiki_id, :integer, :null => false
      t.column :title, :string
      t.column :redirects_to, :string
      t.column :created_on, :datetime, :null => false
    end
    add_index :wiki_redirects, [:wiki_id, :title], :name => :wiki_redirects_wiki_id_title
  end

  def self.down
    drop_table :wiki_redirects
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
