<<<<<<< HEAD
class IssueStartDate < ActiveRecord::Migration
  def self.up
    add_column :issues, :start_date, :date
    add_column :issues, :done_ratio, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :issues, :start_date
    remove_column :issues, :done_ratio
  end
end
=======
class IssueStartDate < ActiveRecord::Migration
  def self.up
    add_column :issues, :start_date, :date
    add_column :issues, :done_ratio, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :issues, :start_date
    remove_column :issues, :done_ratio
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
