<<<<<<< HEAD
class AddProjectToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :project_id, :integer, :null => true, :default => nil
    add_index :enumerations, :project_id
  end

  def self.down
    remove_index :enumerations, :project_id
    remove_column :enumerations, :project_id
  end
end
=======
class AddProjectToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :project_id, :integer, :null => true, :default => nil
    add_index :enumerations, :project_id
  end

  def self.down
    remove_index :enumerations, :project_id
    remove_column :enumerations, :project_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
