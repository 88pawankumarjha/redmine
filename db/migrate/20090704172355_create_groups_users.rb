<<<<<<< HEAD
class CreateGroupsUsers < ActiveRecord::Migration
  def self.up
    create_table :groups_users, :id => false do |t|
      t.column :group_id, :integer, :null => false
      t.column :user_id, :integer, :null => false
    end
    add_index :groups_users, [:group_id, :user_id], :unique => true, :name => :groups_users_ids
  end

  def self.down
    drop_table :groups_users
  end
end
=======
class CreateGroupsUsers < ActiveRecord::Migration
  def self.up
    create_table :groups_users, :id => false do |t|
      t.column :group_id, :integer, :null => false
      t.column :user_id, :integer, :null => false
    end
    add_index :groups_users, [:group_id, :user_id], :unique => true, :name => :groups_users_ids
  end

  def self.down
    drop_table :groups_users
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
