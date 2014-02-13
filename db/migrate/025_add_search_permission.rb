<<<<<<< HEAD
class AddSearchPermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "search", :description => "label_search", :sort => 130, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action('projects', 'search').destroy
  end
end
=======
class AddSearchPermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "search", :description => "label_search", :sort => 130, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "projects", :action => "search").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
