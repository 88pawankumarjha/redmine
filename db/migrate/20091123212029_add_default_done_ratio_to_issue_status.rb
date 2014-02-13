<<<<<<< HEAD
class AddDefaultDoneRatioToIssueStatus < ActiveRecord::Migration
  def self.up
    add_column :issue_statuses, :default_done_ratio, :integer
  end

  def self.down
    remove_column :issue_statuses, :default_done_ratio
  end
end
=======
class AddDefaultDoneRatioToIssueStatus < ActiveRecord::Migration
  def self.up
    add_column :issue_statuses, :default_done_ratio, :integer
  end

  def self.down
    remove_column :issue_statuses, :default_done_ratio
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
