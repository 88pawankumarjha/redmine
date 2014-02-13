<<<<<<< HEAD
class AddRolesBuiltin < ActiveRecord::Migration
  def self.up
    add_column :roles, :builtin, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :roles, :builtin
  end
end
=======
class AddRolesBuiltin < ActiveRecord::Migration
  def self.up
    add_column :roles, :builtin, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :roles, :builtin
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
