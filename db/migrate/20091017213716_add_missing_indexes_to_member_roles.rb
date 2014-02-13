<<<<<<< HEAD
class AddMissingIndexesToMemberRoles < ActiveRecord::Migration
  def self.up
    add_index :member_roles, :member_id
    add_index :member_roles, :role_id
  end

  def self.down
    remove_index :member_roles, :member_id
    remove_index :member_roles, :role_id
  end
end
=======
class AddMissingIndexesToMemberRoles < ActiveRecord::Migration
  def self.up
    add_index :member_roles, :member_id
    add_index :member_roles, :role_id
  end

  def self.down
    remove_index :member_roles, :member_id
    remove_index :member_roles, :role_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
