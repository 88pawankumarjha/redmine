<<<<<<< HEAD
class RemoveProjectsProjectsCount < ActiveRecord::Migration
  def self.up
    remove_column :projects, :projects_count
  end

  def self.down
    add_column :projects, :projects_count, :integer, :default => 0
  end
end
=======
class RemoveProjectsProjectsCount < ActiveRecord::Migration
  def self.up
    remove_column :projects, :projects_count
  end

  def self.down
    add_column :projects, :projects_count, :integer, :default => 0
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
