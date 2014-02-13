<<<<<<< HEAD
class SetDocAndFilesNotifications < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.find_by_controller_and_action("projects", "add_file").update_attribute(:mail_option, true)
    Permission.find_by_controller_and_action("projects", "add_document").update_attribute(:mail_option, true)
    Permission.find_by_controller_and_action("documents", "add_attachment").update_attribute(:mail_option, true)
    Permission.find_by_controller_and_action("issues", "add_attachment").update_attribute(:mail_option, true)
  end

  def self.down
    Permission.find_by_controller_and_action("projects", "add_file").update_attribute(:mail_option, false)
    Permission.find_by_controller_and_action("projects", "add_document").update_attribute(:mail_option, false)
    Permission.find_by_controller_and_action("documents", "add_attachment").update_attribute(:mail_option, false)
    Permission.find_by_controller_and_action("issues", "add_attachment").update_attribute(:mail_option, false)
  end
end
=======
class SetDocAndFilesNotifications < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.where(:controller => "projects", :action => "add_file").each {|p| p.update_attribute(:mail_option, true)}
    Permission.where(:controller => "projects", :action => "add_document").each {|p| p.update_attribute(:mail_option, true)}
    Permission.where(:controller => "documents", :action => "add_attachment").each {|p| p.update_attribute(:mail_option, true)}
    Permission.where(:controller => "issues", :action => "add_attachment").each {|p| p.update_attribute(:mail_option, true)}
  end

  def self.down
    Permission.where(:controller => "projects", :action => "add_file").each {|p| p.update_attribute(:mail_option, false)}
    Permission.where(:controller => "projects", :action => "add_document").each {|p| p.update_attribute(:mail_option, false)}
    Permission.where(:controller => "documents", :action => "add_attachment").each {|p| p.update_attribute(:mail_option, false)}
    Permission.where(:controller => "issues", :action => "add_attachment").each {|p| p.update_attribute(:mail_option, false)}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
