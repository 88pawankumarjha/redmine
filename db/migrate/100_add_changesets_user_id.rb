<<<<<<< HEAD
class AddChangesetsUserId < ActiveRecord::Migration
  def self.up
    add_column :changesets, :user_id, :integer, :default => nil
  end

  def self.down
    remove_column :changesets, :user_id
  end
end
=======
class AddChangesetsUserId < ActiveRecord::Migration
  def self.up
    add_column :changesets, :user_id, :integer, :default => nil
  end

  def self.down
    remove_column :changesets, :user_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
