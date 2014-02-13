<<<<<<< HEAD
class AddIssueCategoriesAssignedToId < ActiveRecord::Migration
  def self.up
    add_column :issue_categories, :assigned_to_id, :integer
  end

  def self.down
    remove_column :issue_categories, :assigned_to_id
  end
end
=======
class AddIssueCategoriesAssignedToId < ActiveRecord::Migration
  def self.up
    add_column :issue_categories, :assigned_to_id, :integer
  end

  def self.down
    remove_column :issue_categories, :assigned_to_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
