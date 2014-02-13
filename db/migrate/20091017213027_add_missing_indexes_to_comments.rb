<<<<<<< HEAD
class AddMissingIndexesToComments < ActiveRecord::Migration
  def self.up
    add_index :comments, [:commented_id, :commented_type]
    add_index :comments, :author_id
  end

  def self.down
    remove_index :comments, :column => [:commented_id, :commented_type]
    remove_index :comments, :author_id
  end
end
=======
class AddMissingIndexesToComments < ActiveRecord::Migration
  def self.up
    add_index :comments, [:commented_id, :commented_type]
    add_index :comments, :author_id
  end

  def self.down
    remove_index :comments, :column => [:commented_id, :commented_type]
    remove_index :comments, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
