<<<<<<< HEAD
class CreateChangesetParents < ActiveRecord::Migration
  def self.up
    create_table :changeset_parents, :id => false do |t|
      t.column :changeset_id, :integer, :null => false
      t.column :parent_id, :integer, :null => false
    end
    add_index :changeset_parents, [:changeset_id], :unique => false, :name => :changeset_parents_changeset_ids
    add_index :changeset_parents, [:parent_id], :unique => false, :name => :changeset_parents_parent_ids
  end

  def self.down
     drop_table :changeset_parents
  end
end
=======
class CreateChangesetParents < ActiveRecord::Migration
  def self.up
    create_table :changeset_parents, :id => false do |t|
      t.column :changeset_id, :integer, :null => false
      t.column :parent_id, :integer, :null => false
    end
    add_index :changeset_parents, [:changeset_id], :unique => false, :name => :changeset_parents_changeset_ids
    add_index :changeset_parents, [:parent_id], :unique => false, :name => :changeset_parents_parent_ids
  end

  def self.down
     drop_table :changeset_parents
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
