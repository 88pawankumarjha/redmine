<<<<<<< HEAD
class CreateQueries < ActiveRecord::Migration
  def self.up
    create_table :queries, :force => true do |t|
      t.column "project_id", :integer
      t.column "name", :string, :default => "", :null => false
      t.column "filters", :text
      t.column "user_id", :integer, :default => 0, :null => false
      t.column "is_public", :boolean, :default => false, :null => false
    end
  end

  def self.down
    drop_table :queries
  end
end
=======
class CreateQueries < ActiveRecord::Migration
  def self.up
    create_table :queries, :force => true do |t|
      t.column "project_id", :integer
      t.column "name", :string, :default => "", :null => false
      t.column "filters", :text
      t.column "user_id", :integer, :default => 0, :null => false
      t.column "is_public", :boolean, :default => false, :null => false
    end
  end

  def self.down
    drop_table :queries
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
