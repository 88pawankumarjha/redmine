<<<<<<< HEAD
class AddRelationsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "issue_relations", :action => "new", :description => "label_relation_new", :sort => 1080, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "issue_relations", :action => "destroy", :description => "label_relation_delete", :sort => 1085, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.find_by_controller_and_action("issue_relations", "new").destroy
    Permission.find_by_controller_and_action("issue_relations", "destroy").destroy
  end
end
=======
class AddRelationsPermissions < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "issue_relations", :action => "new", :description => "label_relation_new", :sort => 1080, :is_public => false, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "issue_relations", :action => "destroy", :description => "label_relation_delete", :sort => 1085, :is_public => false, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where(:controller => "issue_relations", :action => "new").each {|p| p.destroy}
    Permission.where(:controller => "issue_relations", :action => "destroy").each {|p| p.destroy}
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
