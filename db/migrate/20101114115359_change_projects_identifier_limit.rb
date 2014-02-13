<<<<<<< HEAD
class ChangeProjectsIdentifierLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :identifier, :string, :limit => nil
  end

  def self.down
    change_column :projects, :identifier, :string, :limit => 20
  end
end
=======
class ChangeProjectsIdentifierLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :identifier, :string, :limit => nil
  end

  def self.down
    change_column :projects, :identifier, :string, :limit => 20
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
