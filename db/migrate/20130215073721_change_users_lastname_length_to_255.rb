<<<<<<< HEAD
class ChangeUsersLastnameLengthTo255 < ActiveRecord::Migration
  def self.up
    change_column :users, :lastname, :string, :limit => 255, :default => '', :null => false
  end

  def self.down
    change_column :users, :lastname, :string, :limit => 30, :default => '', :null => false
  end
end
=======
class ChangeUsersLastnameLengthTo255 < ActiveRecord::Migration
  def self.up
    change_column :users, :lastname, :string, :limit => 255, :default => '', :null => false
  end

  def self.down
    change_column :users, :lastname, :string, :limit => 30, :default => '', :null => false
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
