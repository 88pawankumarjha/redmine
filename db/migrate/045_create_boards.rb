<<<<<<< HEAD
class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.column :project_id, :integer, :null => false
      t.column :name, :string, :default => "", :null => false
      t.column :description, :string
      t.column :position, :integer, :default => 1
      t.column :topics_count, :integer, :default => 0, :null => false
      t.column :messages_count, :integer, :default => 0, :null => false
      t.column :last_message_id, :integer
    end
    add_index :boards, [:project_id], :name => :boards_project_id
  end

  def self.down
    drop_table :boards
  end
end
=======
class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.column :project_id, :integer, :null => false
      t.column :name, :string, :default => "", :null => false
      t.column :description, :string
      t.column :position, :integer, :default => 1
      t.column :topics_count, :integer, :default => 0, :null => false
      t.column :messages_count, :integer, :default => 0, :null => false
      t.column :last_message_id, :integer
    end
    add_index :boards, [:project_id], :name => :boards_project_id
  end

  def self.down
    drop_table :boards
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
