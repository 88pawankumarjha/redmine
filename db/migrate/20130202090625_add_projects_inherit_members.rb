<<<<<<< HEAD
class AddProjectsInheritMembers < ActiveRecord::Migration
  def up
    add_column :projects, :inherit_members, :boolean, :default => false, :null => false
  end

  def down
    remove_column :projects, :inherit_members
  end
end
=======
class AddProjectsInheritMembers < ActiveRecord::Migration
  def up
    add_column :projects, :inherit_members, :boolean, :default => false, :null => false
  end

  def down
    remove_column :projects, :inherit_members
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
