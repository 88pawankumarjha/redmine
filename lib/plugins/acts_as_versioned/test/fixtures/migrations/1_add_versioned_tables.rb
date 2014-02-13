<<<<<<< HEAD
class AddVersionedTables < ActiveRecord::Migration
  def self.up
    create_table("things") do |t|
      t.column :title, :text
    end
    Thing.create_versioned_table
  end
  
  def self.down
    Thing.drop_versioned_table
    drop_table "things" rescue nil
  end
=======
class AddVersionedTables < ActiveRecord::Migration
  def self.up
    create_table("things") do |t|
      t.column :title, :text
    end
    Thing.create_versioned_table
  end
  
  def self.down
    Thing.drop_versioned_table
    drop_table "things" rescue nil
  end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
end