<<<<<<< HEAD
class AddMissingIndexesToWatchers < ActiveRecord::Migration
  def self.up
    add_index :watchers, :user_id
    add_index :watchers, [:watchable_id, :watchable_type]
  end

  def self.down
    remove_index :watchers, :user_id
    remove_index :watchers, :column => [:watchable_id, :watchable_type]
  end
end
=======
class AddMissingIndexesToWatchers < ActiveRecord::Migration
  def self.up
    add_index :watchers, :user_id
    add_index :watchers, [:watchable_id, :watchable_type]
  end

  def self.down
    remove_index :watchers, :user_id
    remove_index :watchers, :column => [:watchable_id, :watchable_type]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
