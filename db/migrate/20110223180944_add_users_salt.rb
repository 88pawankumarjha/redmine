<<<<<<< HEAD
class AddUsersSalt < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string, :limit => 64
  end

  def self.down
    remove_column :users, :salt
  end
end
=======
class AddUsersSalt < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string, :limit => 64
  end

  def self.down
    remove_column :users, :salt
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
