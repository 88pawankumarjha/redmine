<<<<<<< HEAD
class AddCustomFieldsDefaultValue < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :default_value, :text
  end

  def self.down
    remove_column :custom_fields, :default_value
  end
end
=======
class AddCustomFieldsDefaultValue < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :default_value, :text
  end

  def self.down
    remove_column :custom_fields, :default_value
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
