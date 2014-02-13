<<<<<<< HEAD
class AddMissingIndexesToIssueRelations < ActiveRecord::Migration
  def self.up
    add_index :issue_relations, :issue_from_id
    add_index :issue_relations, :issue_to_id
  end

  def self.down
    remove_index :issue_relations, :issue_from_id
    remove_index :issue_relations, :issue_to_id
  end
end
=======
class AddMissingIndexesToIssueRelations < ActiveRecord::Migration
  def self.up
    add_index :issue_relations, :issue_from_id
    add_index :issue_relations, :issue_to_id
  end

  def self.down
    remove_index :issue_relations, :issue_from_id
    remove_index :issue_relations, :issue_to_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
