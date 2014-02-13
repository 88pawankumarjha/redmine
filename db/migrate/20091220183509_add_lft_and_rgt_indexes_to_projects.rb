<<<<<<< HEAD
class AddLftAndRgtIndexesToProjects < ActiveRecord::Migration
  def self.up
    add_index :projects, :lft
    add_index :projects, :rgt
  end

  def self.down
    remove_index :projects, :lft
    remove_index :projects, :rgt
  end
end
=======
class AddLftAndRgtIndexesToProjects < ActiveRecord::Migration
  def self.up
    add_index :projects, :lft
    add_index :projects, :rgt
  end

  def self.down
    remove_index :projects, :lft
    remove_index :projects, :rgt
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
