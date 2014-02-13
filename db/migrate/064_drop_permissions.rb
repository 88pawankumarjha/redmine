<<<<<<< HEAD
class DropPermissions < ActiveRecord::Migration
  def self.up
    drop_table :permissions
    drop_table :permissions_roles
  end

  def self.down
    raise IrreversibleMigration
  end
end
=======
class DropPermissions < ActiveRecord::Migration
  def self.up
    drop_table :permissions
    drop_table :permissions_roles
  end

  def self.down
    raise IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
