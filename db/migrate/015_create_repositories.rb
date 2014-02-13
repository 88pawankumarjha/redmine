<<<<<<< HEAD
class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories, :force => true do |t|
      t.column "project_id", :integer, :default => 0, :null => false
      t.column "url", :string, :default => "", :null => false
    end
  end

  def self.down
    drop_table :repositories
  end
end
=======
class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories, :force => true do |t|
      t.column "project_id", :integer, :default => 0, :null => false
      t.column "url", :string, :default => "", :null => false
    end
  end

  def self.down
    drop_table :repositories
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
