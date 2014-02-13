<<<<<<< HEAD
class AddMissingIndexesToIssueCategories < ActiveRecord::Migration
  def self.up
    add_index :issue_categories, :assigned_to_id
  end

  def self.down
    remove_index :issue_categories, :assigned_to_id
  end
end
=======
class AddMissingIndexesToIssueCategories < ActiveRecord::Migration
  def self.up
    add_index :issue_categories, :assigned_to_id
  end

  def self.down
    remove_index :issue_categories, :assigned_to_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
