<<<<<<< HEAD
class EnableCalendarAndGanttModulesWhereAppropriate < ActiveRecord::Migration
  def self.up
    EnabledModule.where(:name => 'issue_tracking').all.each do |e|
      EnabledModule.create(:name => 'calendar', :project_id => e.project_id)
      EnabledModule.create(:name => 'gantt', :project_id => e.project_id)
    end
  end

  def self.down
    EnabledModule.delete_all("name = 'calendar' OR name = 'gantt'")
  end
end
=======
class EnableCalendarAndGanttModulesWhereAppropriate < ActiveRecord::Migration
  def self.up
    EnabledModule.where(:name => 'issue_tracking').all.each do |e|
      EnabledModule.create(:name => 'calendar', :project_id => e.project_id)
      EnabledModule.create(:name => 'gantt', :project_id => e.project_id)
    end
  end

  def self.down
    EnabledModule.delete_all("name = 'calendar' OR name = 'gantt'")
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
