<<<<<<< HEAD
class AddIssuesNestedSetsColumns < ActiveRecord::Migration
  def self.up
    add_column :issues, :parent_id, :integer, :default => nil
    add_column :issues, :root_id, :integer, :default => nil
    add_column :issues, :lft, :integer, :default => nil
    add_column :issues, :rgt, :integer, :default => nil

    Issue.update_all("parent_id = NULL, root_id = id, lft = 1, rgt = 2")
  end

  def self.down
    remove_column :issues, :parent_id
    remove_column :issues, :root_id
    remove_column :issues, :lft
    remove_column :issues, :rgt
  end
end
=======
class AddIssuesNestedSetsColumns < ActiveRecord::Migration
  def self.up
    add_column :issues, :parent_id, :integer, :default => nil
    add_column :issues, :root_id, :integer, :default => nil
    add_column :issues, :lft, :integer, :default => nil
    add_column :issues, :rgt, :integer, :default => nil

    Issue.update_all("parent_id = NULL, root_id = id, lft = 1, rgt = 2")
  end

  def self.down
    remove_column :issues, :parent_id
    remove_column :issues, :root_id
    remove_column :issues, :lft
    remove_column :issues, :rgt
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
