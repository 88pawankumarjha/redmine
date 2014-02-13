<<<<<<< HEAD
class AddMessagesLocked < ActiveRecord::Migration
  def self.up
    add_column :messages, :locked, :boolean, :default => false
  end

  def self.down
    remove_column :messages, :locked
  end
end
=======
class AddMessagesLocked < ActiveRecord::Migration
  def self.up
    add_column :messages, :locked, :boolean, :default => false
  end

  def self.down
    remove_column :messages, :locked
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
