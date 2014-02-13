<<<<<<< HEAD
class UpdateWorkflowsToSti < ActiveRecord::Migration
  def up
    WorkflowRule.update_all "type = 'WorkflowTransition'"
  end

  def down
    WorkflowRule.update_all "type = NULL"
  end
end
=======
class UpdateWorkflowsToSti < ActiveRecord::Migration
  def up
    WorkflowRule.update_all "type = 'WorkflowTransition'"
  end

  def down
    WorkflowRule.update_all "type = NULL"
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
