<<<<<<< HEAD
class AddQueriesPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "add_query", :description => "button_create", :sort => 600, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'add_query').first.destroy
  end
end
=======
class AddQueriesPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "add_query", :description => "button_create", :sort => 600, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'add_query').first.destroy
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
