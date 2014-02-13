<<<<<<< HEAD
class ChangeAuthSourcesAccountLimit < ActiveRecord::Migration
  def self.up
    change_column :auth_sources, :account, :string, :limit => nil
  end

  def self.down
    change_column :auth_sources, :account, :string, :limit => 60
  end
end
=======
class ChangeAuthSourcesAccountLimit < ActiveRecord::Migration
  def self.up
    change_column :auth_sources, :account, :string, :limit => nil
  end

  def self.down
    change_column :auth_sources, :account, :string, :limit => 60
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
