<<<<<<< HEAD
class AddUsersType < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :string
    User.update_all "type = 'User'"
  end

  def self.down
    remove_column :users, :type
  end
end
=======
class AddUsersType < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :string
    User.update_all "type = 'User'"
  end

  def self.down
    remove_column :users, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
