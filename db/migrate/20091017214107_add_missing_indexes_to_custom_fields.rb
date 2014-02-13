<<<<<<< HEAD
class AddMissingIndexesToCustomFields < ActiveRecord::Migration
  def self.up
    add_index :custom_fields, [:id, :type]
  end

  def self.down
    remove_index :custom_fields, :column => [:id, :type]
  end
end
=======
class AddMissingIndexesToCustomFields < ActiveRecord::Migration
  def self.up
    add_index :custom_fields, [:id, :type]
  end

  def self.down
    remove_index :custom_fields, :column => [:id, :type]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
