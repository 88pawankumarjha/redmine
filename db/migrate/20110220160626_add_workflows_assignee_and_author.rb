<<<<<<< HEAD
class AddWorkflowsAssigneeAndAuthor < ActiveRecord::Migration
  def self.up
    add_column :workflows, :assignee, :boolean, :null => false, :default => false
    add_column :workflows, :author, :boolean, :null => false, :default => false

    WorkflowRule.update_all(:assignee => false)
    WorkflowRule.update_all(:author => false)
  end

  def self.down
    remove_column :workflows, :assignee
    remove_column :workflows, :author
  end
end
=======
class AddWorkflowsAssigneeAndAuthor < ActiveRecord::Migration
  def self.up
    add_column :workflows, :assignee, :boolean, :null => false, :default => false
    add_column :workflows, :author, :boolean, :null => false, :default => false

    WorkflowRule.update_all(:assignee => false)
    WorkflowRule.update_all(:author => false)
  end

  def self.down
    remove_column :workflows, :assignee
    remove_column :workflows, :author
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
