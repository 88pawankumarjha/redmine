<<<<<<< HEAD
class AddCustomFieldsEditable < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :editable, :boolean, :default => true
  end

  def self.down
    remove_column :custom_fields, :editable
  end
end
=======
class AddCustomFieldsEditable < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :editable, :boolean, :default => true
  end

  def self.down
    remove_column :custom_fields, :editable
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
