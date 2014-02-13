<<<<<<< HEAD
class AddNewsCommentsCount < ActiveRecord::Migration
  def self.up
    add_column :news, :comments_count, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :news, :comments_count
  end
end
=======
class AddNewsCommentsCount < ActiveRecord::Migration
  def self.up
    add_column :news, :comments_count, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :news, :comments_count
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
