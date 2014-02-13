<<<<<<< HEAD
class AddActiveFieldToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :active, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :enumerations, :active
  end
end
=======
class AddActiveFieldToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :active, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :enumerations, :active
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
