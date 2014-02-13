<<<<<<< HEAD
class AddIndexOnIssuesNestedSet < ActiveRecord::Migration
  def self.up
    add_index :issues, [:root_id, :lft, :rgt]
  end

  def self.down
    remove_index :issues, [:root_id, :lft, :rgt]
  end
end
=======
class AddIndexOnIssuesNestedSet < ActiveRecord::Migration
  def self.up
    add_index :issues, [:root_id, :lft, :rgt]
  end

  def self.down
    remove_index :issues, [:root_id, :lft, :rgt]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
