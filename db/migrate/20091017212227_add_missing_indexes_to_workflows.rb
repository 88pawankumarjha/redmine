<<<<<<< HEAD
class AddMissingIndexesToWorkflows < ActiveRecord::Migration
  def self.up
    add_index :workflows, :old_status_id
    add_index :workflows, :role_id
    add_index :workflows, :new_status_id
  end

  def self.down
    remove_index :workflows, :old_status_id
    remove_index :workflows, :role_id
    remove_index :workflows, :new_status_id
  end
end
=======
class AddMissingIndexesToWorkflows < ActiveRecord::Migration
  def self.up
    add_index :workflows, :old_status_id
    add_index :workflows, :role_id
    add_index :workflows, :new_status_id
  end

  def self.down
    remove_index :workflows, :old_status_id
    remove_index :workflows, :role_id
    remove_index :workflows, :new_status_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
