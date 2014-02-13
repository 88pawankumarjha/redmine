<<<<<<< HEAD
class AddProjectStatus < ActiveRecord::Migration
  def self.up
    add_column :projects, :status, :integer, :default => 1, :null => false
  end

  def self.down
    remove_column :projects, :status
  end
end
=======
class AddProjectStatus < ActiveRecord::Migration
  def self.up
    add_column :projects, :status, :integer, :default => 1, :null => false
  end

  def self.down
    remove_column :projects, :status
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
