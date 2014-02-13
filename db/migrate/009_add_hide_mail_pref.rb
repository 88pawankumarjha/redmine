<<<<<<< HEAD
class AddHideMailPref < ActiveRecord::Migration
  def self.up
    add_column :user_preferences, :hide_mail, :boolean, :default => false
  end

  def self.down
    remove_column :user_preferences, :hide_mail
  end
end
=======
class AddHideMailPref < ActiveRecord::Migration
  def self.up
    add_column :user_preferences, :hide_mail, :boolean, :default => false
  end

  def self.down
    remove_column :user_preferences, :hide_mail
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
