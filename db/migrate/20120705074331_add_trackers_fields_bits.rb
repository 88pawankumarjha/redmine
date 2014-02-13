<<<<<<< HEAD
class AddTrackersFieldsBits < ActiveRecord::Migration
  def self.up
    add_column :trackers, :fields_bits, :integer, :default => 0
  end

  def self.down
    remove_column :trackers, :fields_bits
  end
end
=======
class AddTrackersFieldsBits < ActiveRecord::Migration
  def self.up
    add_column :trackers, :fields_bits, :integer, :default => 0
  end

  def self.down
    remove_column :trackers, :fields_bits
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
