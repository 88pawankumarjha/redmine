<<<<<<< HEAD
class AddCustomValueCustomizedIndex < ActiveRecord::Migration
  def self.up
    add_index :custom_values, [:customized_type, :customized_id], :name => :custom_values_customized
  end

  def self.down
    remove_index :custom_values, :name => :custom_values_customized
  end
end
=======
class AddCustomValueCustomizedIndex < ActiveRecord::Migration
  def self.up
    add_index :custom_values, [:customized_type, :customized_id], :name => :custom_values_customized
  end

  def self.down
    remove_index :custom_values, :name => :custom_values_customized
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
