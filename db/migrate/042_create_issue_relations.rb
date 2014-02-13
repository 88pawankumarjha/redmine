<<<<<<< HEAD
class CreateIssueRelations < ActiveRecord::Migration
  def self.up
    create_table :issue_relations do |t|
      t.column :issue_from_id, :integer, :null => false
      t.column :issue_to_id, :integer, :null => false
      t.column :relation_type, :string, :default => "", :null => false
      t.column :delay, :integer
    end
  end

  def self.down
    drop_table :issue_relations
  end
end
=======
class CreateIssueRelations < ActiveRecord::Migration
  def self.up
    create_table :issue_relations do |t|
      t.column :issue_from_id, :integer, :null => false
      t.column :issue_to_id, :integer, :null => false
      t.column :relation_type, :string, :default => "", :null => false
      t.column :delay, :integer
    end
  end

  def self.down
    drop_table :issue_relations
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
