<<<<<<< HEAD
class AddMemberRolesInheritedFrom < ActiveRecord::Migration
  def self.up
    add_column :member_roles, :inherited_from, :integer
  end

  def self.down
    remove_column :member_roles, :inherited_from
  end
end
=======
class AddMemberRolesInheritedFrom < ActiveRecord::Migration
  def self.up
    add_column :member_roles, :inherited_from, :integer
  end

  def self.down
    remove_column :member_roles, :inherited_from
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
