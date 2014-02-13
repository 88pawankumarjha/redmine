<<<<<<< HEAD
class IssueAddNote < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "issues", :action => "add_note", :description => "label_add_note", :sort => 1057, :mail_option => 1, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'issues', 'add_note').first.destroy
  end
end
=======
class IssueAddNote < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "issues", :action => "add_note", :description => "label_add_note", :sort => 1057, :mail_option => 1, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'issues', 'add_note').first.destroy
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
