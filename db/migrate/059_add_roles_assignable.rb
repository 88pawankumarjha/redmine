<<<<<<< HEAD
class AddRolesAssignable < ActiveRecord::Migration
  def self.up
    add_column :roles, :assignable, :boolean, :default => true
  end

  def self.down
    remove_column :roles, :assignable
  end
end
=======
class AddRolesAssignable < ActiveRecord::Migration
  def self.up
    add_column :roles, :assignable, :boolean, :default => true
  end

  def self.down
    remove_column :roles, :assignable
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
