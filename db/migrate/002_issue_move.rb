<<<<<<< HEAD
class IssueMove < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "move_issues", :description => "button_move", :sort => 1061, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'move_issues').first.destroy
  end
end
=======
class IssueMove < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "move_issues", :description => "button_move", :sort => 1061, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'move_issues').first.destroy
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
