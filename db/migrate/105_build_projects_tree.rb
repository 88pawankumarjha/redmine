<<<<<<< HEAD
class BuildProjectsTree < ActiveRecord::Migration
  def self.up
    Project.rebuild_tree!
  end

  def self.down
  end
end
=======
class BuildProjectsTree < ActiveRecord::Migration
  def self.up
    Project.rebuild_tree!
  end

  def self.down
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
