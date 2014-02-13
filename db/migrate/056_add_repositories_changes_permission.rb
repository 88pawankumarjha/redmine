<<<<<<< HEAD
class AddRepositoriesChangesPermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => 'repositories', :action => 'changes', :description => 'label_change_plural', :sort => 1475, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action('repositories', 'changes').destroy
  end
end
=======
class AddRepositoriesChangesPermission < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => 'repositories', :action => 'changes', :description => 'label_change_plural', :sort => 1475, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "repositories", :action => "changes").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
