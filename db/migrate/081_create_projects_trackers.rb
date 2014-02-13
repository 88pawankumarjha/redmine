<<<<<<< HEAD
class CreateProjectsTrackers < ActiveRecord::Migration
  def self.up
    create_table :projects_trackers, :id => false do |t|
      t.column :project_id, :integer, :default => 0, :null => false
      t.column :tracker_id, :integer, :default => 0, :null => false
    end
    add_index :projects_trackers, :project_id, :name => :projects_trackers_project_id

    # Associates all trackers to all projects (as it was before)
    tracker_ids = Tracker.all.collect(&:id)
    Project.all.each do |project|
      project.tracker_ids = tracker_ids
    end
  end

  def self.down
    drop_table :projects_trackers
  end
end
=======
class CreateProjectsTrackers < ActiveRecord::Migration
  def self.up
    create_table :projects_trackers, :id => false do |t|
      t.column :project_id, :integer, :default => 0, :null => false
      t.column :tracker_id, :integer, :default => 0, :null => false
    end
    add_index :projects_trackers, :project_id, :name => :projects_trackers_project_id

    # Associates all trackers to all projects (as it was before)
    tracker_ids = Tracker.all.collect(&:id)
    Project.all.each do |project|
      project.tracker_ids = tracker_ids
    end
  end

  def self.down
    drop_table :projects_trackers
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
