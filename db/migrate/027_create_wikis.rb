<<<<<<< HEAD
class CreateWikis < ActiveRecord::Migration
  def self.up
    create_table :wikis do |t|
      t.column :project_id, :integer, :null => false
      t.column :start_page, :string,  :limit => 255, :null => false
      t.column :status, :integer, :default => 1, :null => false
    end
    add_index :wikis, :project_id, :name => :wikis_project_id
  end

  def self.down
    drop_table :wikis
  end
end
=======
class CreateWikis < ActiveRecord::Migration
  def self.up
    create_table :wikis do |t|
      t.column :project_id, :integer, :null => false
      t.column :start_page, :string,  :limit => 255, :null => false
      t.column :status, :integer, :default => 1, :null => false
    end
    add_index :wikis, :project_id, :name => :wikis_project_id
  end

  def self.down
    drop_table :wikis
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
