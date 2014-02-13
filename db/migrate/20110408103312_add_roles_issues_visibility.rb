<<<<<<< HEAD
class AddRolesIssuesVisibility < ActiveRecord::Migration
  def self.up
    add_column :roles, :issues_visibility, :string, :limit => 30, :default => 'default', :null => false
  end

  def self.down
    remove_column :roles, :issues_visibility
  end
end
=======
class AddRolesIssuesVisibility < ActiveRecord::Migration
  def self.up
    add_column :roles, :issues_visibility, :string, :limit => 30, :default => 'default', :null => false
  end

  def self.down
    remove_column :roles, :issues_visibility
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
