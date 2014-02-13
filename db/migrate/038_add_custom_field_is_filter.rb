<<<<<<< HEAD
class AddCustomFieldIsFilter < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :is_filter, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :custom_fields, :is_filter
  end
end
=======
class AddCustomFieldIsFilter < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :is_filter, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :custom_fields, :is_filter
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
