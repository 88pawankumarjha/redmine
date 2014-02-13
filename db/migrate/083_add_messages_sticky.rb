<<<<<<< HEAD
class AddMessagesSticky < ActiveRecord::Migration
  def self.up
    add_column :messages, :sticky, :integer, :default => 0
  end

  def self.down
    remove_column :messages, :sticky
  end
end
=======
class AddMessagesSticky < ActiveRecord::Migration
  def self.up
    add_column :messages, :sticky, :integer, :default => 0
  end

  def self.down
    remove_column :messages, :sticky
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
