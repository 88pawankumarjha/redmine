<<<<<<< HEAD
class AddVersionsStatus < ActiveRecord::Migration
  def self.up
    add_column :versions, :status, :string, :default => 'open'
    Version.update_all("status = 'open'")
  end

  def self.down
    remove_column :versions, :status
  end
end
=======
class AddVersionsStatus < ActiveRecord::Migration
  def self.up
    add_column :versions, :status, :string, :default => 'open'
    Version.update_all("status = 'open'")
  end

  def self.down
    remove_column :versions, :status
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
