<<<<<<< HEAD
class AddIndexToUsersType < ActiveRecord::Migration
  def self.up
    add_index :users, :type
  end

  def self.down
    remove_index :users, :type
  end
end
=======
class AddIndexToUsersType < ActiveRecord::Migration
  def self.up
    add_index :users, :type
  end

  def self.down
    remove_index :users, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
