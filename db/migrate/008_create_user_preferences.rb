<<<<<<< HEAD
class CreateUserPreferences < ActiveRecord::Migration
  def self.up
    create_table :user_preferences do |t|
      t.column "user_id", :integer, :default => 0, :null => false
      t.column "others", :text
    end
  end

  def self.down
    drop_table :user_preferences
  end
end
=======
class CreateUserPreferences < ActiveRecord::Migration
  def self.up
    create_table :user_preferences do |t|
      t.column "user_id", :integer, :default => 0, :null => false
      t.column "others", :text
    end
  end

  def self.down
    drop_table :user_preferences
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
