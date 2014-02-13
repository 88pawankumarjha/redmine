<<<<<<< HEAD
class AddWorkflowsType < ActiveRecord::Migration
  def up
    add_column :workflows, :type, :string, :limit => 30
  end

  def down
    remove_column :workflows, :type
  end
end
=======
class AddWorkflowsType < ActiveRecord::Migration
  def up
    add_column :workflows, :type, :string, :limit => 30
  end

  def down
    remove_column :workflows, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
