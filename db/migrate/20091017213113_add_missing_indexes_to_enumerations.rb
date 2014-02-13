<<<<<<< HEAD
class AddMissingIndexesToEnumerations < ActiveRecord::Migration
  def self.up
    add_index :enumerations, [:id, :type]
  end

  def self.down
    remove_index :enumerations, :column => [:id, :type]
  end
end
=======
class AddMissingIndexesToEnumerations < ActiveRecord::Migration
  def self.up
    add_index :enumerations, [:id, :type]
  end

  def self.down
    remove_index :enumerations, :column => [:id, :type]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
