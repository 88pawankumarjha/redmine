<<<<<<< HEAD
class AddTrackerIsInRoadmap < ActiveRecord::Migration
  def self.up
    add_column :trackers, :is_in_roadmap, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :trackers, :is_in_roadmap
  end
end
=======
class AddTrackerIsInRoadmap < ActiveRecord::Migration
  def self.up
    add_column :trackers, :is_in_roadmap, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :trackers, :is_in_roadmap
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
