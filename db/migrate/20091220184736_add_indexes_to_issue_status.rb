<<<<<<< HEAD
class AddIndexesToIssueStatus < ActiveRecord::Migration
  def self.up
    add_index :issue_statuses, :position
    add_index :issue_statuses, :is_closed
    add_index :issue_statuses, :is_default
  end

  def self.down
    remove_index :issue_statuses, :position
    remove_index :issue_statuses, :is_closed
    remove_index :issue_statuses, :is_default
  end
end
=======
class AddIndexesToIssueStatus < ActiveRecord::Migration
  def self.up
    add_index :issue_statuses, :position
    add_index :issue_statuses, :is_closed
    add_index :issue_statuses, :is_default
  end

  def self.down
    remove_index :issue_statuses, :position
    remove_index :issue_statuses, :is_closed
    remove_index :issue_statuses, :is_default
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
