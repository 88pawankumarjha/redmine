<<<<<<< HEAD
class AddTimelogPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "timelog", :action => "edit", :description => "button_log_time", :sort => 1520, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action('timelog', 'edit').destroy
  end
end
=======
class AddTimelogPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "timelog", :action => "edit", :description => "button_log_time", :sort => 1520, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "timelog", :action => "edit").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
