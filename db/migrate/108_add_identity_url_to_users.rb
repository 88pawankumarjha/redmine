<<<<<<< HEAD
class AddIdentityUrlToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :identity_url, :string
  end

  def self.down
    remove_column :users, :identity_url
  end
end
=======
class AddIdentityUrlToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :identity_url, :string
  end

  def self.down
    remove_column :users, :identity_url
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
