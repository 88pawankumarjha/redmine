<<<<<<< HEAD
class AddMissingIndexesToTimeEntries < ActiveRecord::Migration
  def self.up
    add_index :time_entries, :activity_id
    add_index :time_entries, :user_id
  end

  def self.down
    remove_index :time_entries, :activity_id
    remove_index :time_entries, :user_id
  end
end
=======
class AddMissingIndexesToTimeEntries < ActiveRecord::Migration
  def self.up
    add_index :time_entries, :activity_id
    add_index :time_entries, :user_id
  end

  def self.down
    remove_index :time_entries, :activity_id
    remove_index :time_entries, :user_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
