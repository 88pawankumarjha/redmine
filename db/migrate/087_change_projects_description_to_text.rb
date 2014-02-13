<<<<<<< HEAD
class ChangeProjectsDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :projects, :description, :text, :null => true, :default => nil
  end

  def self.down
  end
end
=======
class ChangeProjectsDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :projects, :description, :text, :null => true, :default => nil
  end

  def self.down
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
