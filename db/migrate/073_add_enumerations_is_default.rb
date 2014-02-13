<<<<<<< HEAD
class AddEnumerationsIsDefault < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :is_default, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :enumerations, :is_default
  end
end
=======
class AddEnumerationsIsDefault < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :is_default, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :enumerations, :is_default
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
