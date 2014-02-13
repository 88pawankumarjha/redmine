<<<<<<< HEAD
class AddParentIdToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :parent_id, :integer, :null => true, :default => nil
  end

  def self.down
    remove_column :enumerations, :parent_id
  end
end
=======
class AddParentIdToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :parent_id, :integer, :null => true, :default => nil
  end

  def self.down
    remove_column :enumerations, :parent_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
