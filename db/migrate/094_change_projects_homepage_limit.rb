<<<<<<< HEAD
class ChangeProjectsHomepageLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :homepage, :string, :limit => nil, :default => ''
  end

  def self.down
    change_column :projects, :homepage, :string, :limit => 60, :default => ''
  end
end
=======
class ChangeProjectsHomepageLimit < ActiveRecord::Migration
  def self.up
    change_column :projects, :homepage, :string, :limit => nil, :default => ''
  end

  def self.down
    change_column :projects, :homepage, :string, :limit => 60, :default => ''
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
