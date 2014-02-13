<<<<<<< HEAD
class AddMissingIndexesToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, [:id, :type]
    add_index :users, :auth_source_id
  end

  def self.down
    remove_index :users, :column => [:id, :type]
    remove_index :users, :auth_source_id
  end
end
=======
class AddMissingIndexesToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, [:id, :type]
    add_index :users, :auth_source_id
  end

  def self.down
    remove_index :users, :column => [:id, :type]
    remove_index :users, :auth_source_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
