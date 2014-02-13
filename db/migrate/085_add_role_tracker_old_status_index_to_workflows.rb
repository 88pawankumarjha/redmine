<<<<<<< HEAD
class AddRoleTrackerOldStatusIndexToWorkflows < ActiveRecord::Migration
  def self.up
    add_index :workflows, [:role_id, :tracker_id, :old_status_id], :name => :wkfs_role_tracker_old_status
  end

  def self.down
    remove_index(:workflows, :name => :wkfs_role_tracker_old_status); rescue
  end
end
=======
class AddRoleTrackerOldStatusIndexToWorkflows < ActiveRecord::Migration
  def self.up
    add_index :workflows, [:role_id, :tracker_id, :old_status_id], :name => :wkfs_role_tracker_old_status
  end

  def self.down
    remove_index(:workflows, :name => :wkfs_role_tracker_old_status); rescue
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
