<<<<<<< HEAD
class AddVersionsSharing < ActiveRecord::Migration
  def self.up
    add_column :versions, :sharing, :string, :default => 'none', :null => false
    add_index :versions, :sharing
  end

  def self.down
    remove_column :versions, :sharing
  end
end
=======
class AddVersionsSharing < ActiveRecord::Migration
  def self.up
    add_column :versions, :sharing, :string, :default => 'none', :null => false
    add_index :versions, :sharing
  end

  def self.down
    remove_column :versions, :sharing
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
