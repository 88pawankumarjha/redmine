<<<<<<< HEAD
class AddProjectsLftAndRgt < ActiveRecord::Migration
  def self.up
    add_column :projects, :lft, :integer
    add_column :projects, :rgt, :integer
  end

  def self.down
    remove_column :projects, :lft
    remove_column :projects, :rgt
  end
end
=======
class AddProjectsLftAndRgt < ActiveRecord::Migration
  def self.up
    add_column :projects, :lft, :integer
    add_column :projects, :rgt, :integer
  end

  def self.down
    remove_column :projects, :lft
    remove_column :projects, :rgt
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
