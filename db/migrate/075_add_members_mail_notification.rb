<<<<<<< HEAD
class AddMembersMailNotification < ActiveRecord::Migration
  def self.up
    add_column :members, :mail_notification, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :members, :mail_notification
  end
end
=======
class AddMembersMailNotification < ActiveRecord::Migration
  def self.up
    add_column :members, :mail_notification, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :members, :mail_notification
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
