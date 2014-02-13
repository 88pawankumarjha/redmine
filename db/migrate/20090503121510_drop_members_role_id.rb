<<<<<<< HEAD
class DropMembersRoleId < ActiveRecord::Migration
  def self.up
    remove_column :members, :role_id
  end

  def self.down
    raise IrreversibleMigration
  end
end
=======
class DropMembersRoleId < ActiveRecord::Migration
  def self.up
    remove_column :members, :role_id
  end

  def self.down
    raise IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
