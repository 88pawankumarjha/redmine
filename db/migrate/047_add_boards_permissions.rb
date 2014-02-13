<<<<<<< HEAD
class AddBoardsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "boards", :action => "new", :description => "button_add", :sort => 2000, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "boards", :action => "edit", :description => "button_edit", :sort => 2005, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "boards", :action => "destroy", :description => "button_delete", :sort => 2010, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action("boards", "new").destroy
    Permission.find_by_controller_and_action("boards", "edit").destroy
    Permission.find_by_controller_and_action("boards", "destroy").destroy
  end
end
=======
class AddBoardsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "boards", :action => "new", :description => "button_add", :sort => 2000, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "boards", :action => "edit", :description => "button_edit", :sort => 2005, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "boards", :action => "destroy", :description => "button_delete", :sort => 2010, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "boards", :action => "new").each {|p| p.destroy}
    Permission.where(:controller => "boards", :action => "edit").each {|p| p.destroy}
    Permission.where(:controller => "boards", :action => "destroy").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
