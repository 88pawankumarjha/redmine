<<<<<<< HEAD
class AddIssuesEstimatedHours < ActiveRecord::Migration
  def self.up
    add_column :issues, :estimated_hours, :float
  end

  def self.down
    remove_column :issues, :estimated_hours
  end
end
=======
class AddIssuesEstimatedHours < ActiveRecord::Migration
  def self.up
    add_column :issues, :estimated_hours, :float
  end

  def self.down
    remove_column :issues, :estimated_hours
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
