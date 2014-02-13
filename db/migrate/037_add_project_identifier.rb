<<<<<<< HEAD
class AddProjectIdentifier < ActiveRecord::Migration
  def self.up
    add_column :projects, :identifier, :string, :limit => 20
  end

  def self.down
    remove_column :projects, :identifier
  end
end
=======
class AddProjectIdentifier < ActiveRecord::Migration
  def self.up
    add_column :projects, :identifier, :string, :limit => 20
  end

  def self.down
    remove_column :projects, :identifier
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
