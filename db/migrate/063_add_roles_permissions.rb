<<<<<<< HEAD
class AddRolesPermissions < ActiveRecord::Migration
  def self.up
    add_column :roles, :permissions, :text
  end

  def self.down
    remove_column :roles, :permissions
  end
end
=======
class AddRolesPermissions < ActiveRecord::Migration
  def self.up
    add_column :roles, :permissions, :text
  end

  def self.down
    remove_column :roles, :permissions
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
