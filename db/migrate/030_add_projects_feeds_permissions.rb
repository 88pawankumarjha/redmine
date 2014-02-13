<<<<<<< HEAD
class AddProjectsFeedsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "feeds", :description => "label_feed_plural", :sort => 132, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action('projects', 'feeds').destroy
  end
end
=======
class AddProjectsFeedsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "feeds", :description => "label_feed_plural", :sort => 132, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "projects", :action => "feeds").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
