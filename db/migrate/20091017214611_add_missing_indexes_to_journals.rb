<<<<<<< HEAD
class AddMissingIndexesToJournals < ActiveRecord::Migration
  def self.up
    add_index :journals, :user_id
    add_index :journals, :journalized_id
  end

  def self.down
    remove_index :journals, :user_id
    remove_index :journals, :journalized_id
  end
end
=======
class AddMissingIndexesToJournals < ActiveRecord::Migration
  def self.up
    add_index :journals, :user_id
    add_index :journals, :journalized_id
  end

  def self.down
    remove_index :journals, :user_id
    remove_index :journals, :journalized_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
