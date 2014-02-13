<<<<<<< HEAD
class AddMissingIndexesToQueries < ActiveRecord::Migration
  def self.up
    add_index :queries, :project_id
    add_index :queries, :user_id
  end

  def self.down
    remove_index :queries, :project_id
    remove_index :queries, :user_id
  end
end
=======
class AddMissingIndexesToQueries < ActiveRecord::Migration
  def self.up
    add_index :queries, :project_id
    add_index :queries, :user_id
  end

  def self.down
    remove_index :queries, :project_id
    remove_index :queries, :user_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
