<<<<<<< HEAD
class AddIndexToSettingsName < ActiveRecord::Migration
  def self.up
    add_index :settings, :name
  end

  def self.down
    remove_index :settings, :name
  end
end
=======
class AddIndexToSettingsName < ActiveRecord::Migration
  def self.up
    add_index :settings, :name
  end

  def self.down
    remove_index :settings, :name
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
