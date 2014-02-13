<<<<<<< HEAD
class AddUserPreferencesTimeZone < ActiveRecord::Migration
  def self.up
    add_column :user_preferences, :time_zone, :string
  end

  def self.down
    remove_column :user_preferences, :time_zone
  end
end
=======
class AddUserPreferencesTimeZone < ActiveRecord::Migration
  def self.up
    add_column :user_preferences, :time_zone, :string
  end

  def self.down
    remove_column :user_preferences, :time_zone
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
