<<<<<<< HEAD
class AddIssuesIsPrivate < ActiveRecord::Migration
  def self.up
    add_column :issues, :is_private, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :issues, :is_private
  end
end
=======
class AddIssuesIsPrivate < ActiveRecord::Migration
  def self.up
    add_column :issues, :is_private, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :issues, :is_private
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
