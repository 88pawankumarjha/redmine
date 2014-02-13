<<<<<<< HEAD
class ChangeProjectsNameLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :name, :string, :limit => nil, :default => '', :null => false
  end

  def self.down
    change_column :projects, :name, :string, :limit => 30, :default => '', :null => false
  end
end
=======
class ChangeProjectsNameLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :name, :string, :limit => nil, :default => '', :null => false
  end

  def self.down
    change_column :projects, :name, :string, :limit => 30, :default => '', :null => false
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
