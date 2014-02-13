<<<<<<< HEAD
class AddTrackerPosition < ActiveRecord::Migration
  def self.up
    add_column :trackers, :position, :integer, :default => 1
    Tracker.all.each_with_index {|tracker, i| tracker.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :trackers, :position
  end
end
=======
class AddTrackerPosition < ActiveRecord::Migration
  def self.up
    add_column :trackers, :position, :integer, :default => 1
    Tracker.all.each_with_index {|tracker, i| tracker.update_attribute(:position, i+1)}
  end

  def self.down
    remove_column :trackers, :position
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
