<<<<<<< HEAD
class AddWorkflowsRuleFields < ActiveRecord::Migration
  def up
    add_column :workflows, :field_name, :string, :limit => 30
    add_column :workflows, :rule, :string, :limit => 30
  end

  def down
    remove_column :workflows, :field_name
    remove_column :workflows, :rule
  end
end
=======
class AddWorkflowsRuleFields < ActiveRecord::Migration
  def up
    add_column :workflows, :field_name, :string, :limit => 30
    add_column :workflows, :rule, :string, :limit => 30
  end

  def down
    remove_column :workflows, :field_name
    remove_column :workflows, :rule
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
