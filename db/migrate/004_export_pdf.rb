<<<<<<< HEAD
class ExportPdf < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "export_issues_pdf", :description => "label_export_pdf", :sort => 1002, :is_public => true, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "issues", :action => "export_pdf", :description => "label_export_pdf", :sort => 1015, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'export_issues_pdf').first.destroy
    Permission.where("controller=? and action=?", 'issues', 'export_pdf').first.destroy
  end
end
=======
class ExportPdf < ActiveRecord::Migration
  # model removed
  class Permission < ActiveRecord::Base; end

  def self.up
    Permission.create :controller => "projects", :action => "export_issues_pdf", :description => "label_export_pdf", :sort => 1002, :is_public => true, :mail_option => 0, :mail_enabled => 0
    Permission.create :controller => "issues", :action => "export_pdf", :description => "label_export_pdf", :sort => 1015, :is_public => true, :mail_option => 0, :mail_enabled => 0
  end

  def self.down
    Permission.where("controller=? and action=?", 'projects', 'export_issues_pdf').first.destroy
    Permission.where("controller=? and action=?", 'issues', 'export_pdf').first.destroy
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
