<<<<<<< HEAD
class AddViewIssuesPermission < ActiveRecord::Migration
  def self.up
    Role.all.each do |r|
      r.add_permission!(:view_issues)
    end
  end

  def self.down
    Role.all.each do |r|
      r.remove_permission!(:view_issues)
    end
  end
end
=======
class AddViewIssuesPermission < ActiveRecord::Migration
  def self.up
    Role.all.each do |r|
      r.add_permission!(:view_issues)
    end
  end

  def self.down
    Role.all.each do |r|
      r.remove_permission!(:view_issues)
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
