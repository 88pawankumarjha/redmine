<<<<<<< HEAD
class CreateChangesetsIssues < ActiveRecord::Migration
  def self.up
    create_table :changesets_issues, :id => false do |t|
      t.column :changeset_id, :integer, :null => false
      t.column :issue_id, :integer, :null => false
    end
    add_index :changesets_issues, [:changeset_id, :issue_id], :unique => true, :name => :changesets_issues_ids
  end

  def self.down
    drop_table :changesets_issues
  end
end
=======
class CreateChangesetsIssues < ActiveRecord::Migration
  def self.up
    create_table :changesets_issues, :id => false do |t|
      t.column :changeset_id, :integer, :null => false
      t.column :issue_id, :integer, :null => false
    end
    add_index :changesets_issues, [:changeset_id, :issue_id], :unique => true, :name => :changesets_issues_ids
  end

  def self.down
    drop_table :changesets_issues
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
