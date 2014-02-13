<<<<<<< HEAD
class PopulateEnumerationsPositionName < ActiveRecord::Migration
  def up
    IssuePriority.compute_position_names
  end

  def down
    IssuePriority.clear_position_names
  end
end
=======
class PopulateEnumerationsPositionName < ActiveRecord::Migration
  def up
    IssuePriority.compute_position_names
  end

  def down
    IssuePriority.clear_position_names
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
