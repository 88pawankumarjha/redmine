<<<<<<< HEAD
class AddTypeToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :type, :string
  end

  def self.down
    remove_column :enumerations, :type
  end
end
=======
class AddTypeToEnumerations < ActiveRecord::Migration
  def self.up
    add_column :enumerations, :type, :string
  end

  def self.down
    remove_column :enumerations, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
