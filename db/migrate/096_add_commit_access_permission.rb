<<<<<<< HEAD
class AddCommitAccessPermission < ActiveRecord::Migration
  def self.up
    Role.all.select { |r| not r.builtin? }.each do |r|
      r.add_permission!(:commit_access)
    end
  end

  def self.down
    Role.all.select { |r| not r.builtin? }.each do |r|
      r.remove_permission!(:commit_access)
    end
  end
end
=======
class AddCommitAccessPermission < ActiveRecord::Migration
  def self.up
    Role.all.select { |r| not r.builtin? }.each do |r|
      r.add_permission!(:commit_access)
    end
  end

  def self.down
    Role.all.select { |r| not r.builtin? }.each do |r|
      r.remove_permission!(:commit_access)
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
