<<<<<<< HEAD
class RemoveIssueStatusesHtmlColor < ActiveRecord::Migration
  def self.up
    remove_column :issue_statuses, :html_color
  end

  def self.down
    raise IrreversibleMigration
  end
end
=======
class RemoveIssueStatusesHtmlColor < ActiveRecord::Migration
  def self.up
    remove_column :issue_statuses, :html_color
  end

  def self.down
    raise IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
