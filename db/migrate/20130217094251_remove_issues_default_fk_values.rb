<<<<<<< HEAD
class RemoveIssuesDefaultFkValues < ActiveRecord::Migration
  def up
    change_column_default :issues, :tracker_id, nil
    change_column_default :issues, :project_id, nil
    change_column_default :issues, :status_id, nil
    change_column_default :issues, :assigned_to_id, nil
    change_column_default :issues, :priority_id, nil
    change_column_default :issues, :author_id, nil
  end

  def down
    change_column_default :issues, :tracker_id, 0
    change_column_default :issues, :project_id, 0
    change_column_default :issues, :status_id, 0
    change_column_default :issues, :assigned_to_id, 0
    change_column_default :issues, :priority_id, 0
    change_column_default :issues, :author_id, 0
  end
end
=======
class RemoveIssuesDefaultFkValues < ActiveRecord::Migration
  def up
    change_column_default :issues, :tracker_id, nil
    change_column_default :issues, :project_id, nil
    change_column_default :issues, :status_id, nil
    change_column_default :issues, :assigned_to_id, nil
    change_column_default :issues, :priority_id, nil
    change_column_default :issues, :author_id, nil
  end

  def down
    change_column_default :issues, :tracker_id, 0
    change_column_default :issues, :project_id, 0
    change_column_default :issues, :status_id, 0
    change_column_default :issues, :assigned_to_id, 0
    change_column_default :issues, :priority_id, 0
    change_column_default :issues, :author_id, 0
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
