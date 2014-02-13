<<<<<<< HEAD
class AddIssueStatusPosition < ActiveRecord::Migration
  def self.up
    add_column :issue_statuses, :position, :integer, :default => 1
    IssueStatus.all.each_with_index {|status, i| status.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :issue_statuses, :position
  end
end
=======
class AddIssueStatusPosition < ActiveRecord::Migration
  def self.up
    add_column :issue_statuses, :position, :integer, :default => 1
    IssueStatus.all.each_with_index {|status, i| status.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :issue_statuses, :position
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
