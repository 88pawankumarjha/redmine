<<<<<<< HEAD
class AddMissingIndexesToIssues < ActiveRecord::Migration
  def self.up
    add_index :issues, :status_id
    add_index :issues, :category_id
    add_index :issues, :assigned_to_id
    add_index :issues, :fixed_version_id
    add_index :issues, :tracker_id
    add_index :issues, :priority_id
    add_index :issues, :author_id
  end

  def self.down
    remove_index :issues, :status_id
    remove_index :issues, :category_id
    remove_index :issues, :assigned_to_id
    remove_index :issues, :fixed_version_id
    remove_index :issues, :tracker_id
    remove_index :issues, :priority_id
    remove_index :issues, :author_id
  end
end
=======
class AddMissingIndexesToIssues < ActiveRecord::Migration
  def self.up
    add_index :issues, :status_id
    add_index :issues, :category_id
    add_index :issues, :assigned_to_id
    add_index :issues, :fixed_version_id
    add_index :issues, :tracker_id
    add_index :issues, :priority_id
    add_index :issues, :author_id
  end

  def self.down
    remove_index :issues, :status_id
    remove_index :issues, :category_id
    remove_index :issues, :assigned_to_id
    remove_index :issues, :fixed_version_id
    remove_index :issues, :tracker_id
    remove_index :issues, :priority_id
    remove_index :issues, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
