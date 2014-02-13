<<<<<<< HEAD
class AddWatchersUserIdTypeIndex < ActiveRecord::Migration
  def self.up
    add_index :watchers, [:user_id, :watchable_type], :name => :watchers_user_id_type
  end

  def self.down
    remove_index :watchers, :name => :watchers_user_id_type
  end
end
=======
class AddWatchersUserIdTypeIndex < ActiveRecord::Migration
  def self.up
    add_index :watchers, [:user_id, :watchable_type], :name => :watchers_user_id_type
  end

  def self.down
    remove_index :watchers, :name => :watchers_user_id_type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
