<<<<<<< HEAD
class AddRolePosition < ActiveRecord::Migration
  def self.up
    add_column :roles, :position, :integer, :default => 1
    Role.all.each_with_index {|role, i| role.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :roles, :position
  end
end
=======
class AddRolePosition < ActiveRecord::Migration
  def self.up
    add_column :roles, :position, :integer, :default => 1
    Role.all.each_with_index {|role, i| role.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :roles, :position
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
