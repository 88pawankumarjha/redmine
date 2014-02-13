<<<<<<< HEAD
class AddWikiDestroyPagePermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => 'wiki', :action => 'destroy', :description => 'button_delete', :sort => 1740, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action('wiki', 'destroy').destroy
  end
end
=======
class AddWikiDestroyPagePermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => 'wiki', :action => 'destroy', :description => 'button_delete', :sort => 1740, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "wiki", :action => "destroy").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
