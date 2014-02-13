<<<<<<< HEAD
class AddMissingIndexesToUserPreferences < ActiveRecord::Migration
  def self.up
    add_index :user_preferences, :user_id
  end

  def self.down
    remove_index :user_preferences, :user_id
  end
end
=======
class AddMissingIndexesToUserPreferences < ActiveRecord::Migration
  def self.up
    add_index :user_preferences, :user_id
  end

  def self.down
    remove_index :user_preferences, :user_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
