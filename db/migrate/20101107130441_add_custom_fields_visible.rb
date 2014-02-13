<<<<<<< HEAD
class AddCustomFieldsVisible < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :visible, :boolean, :null => false, :default => true
    CustomField.update_all("visible = #{CustomField.connection.quoted_true}")
  end

  def self.down
    remove_column :custom_fields, :visible
  end
end
=======
class AddCustomFieldsVisible < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :visible, :boolean, :null => false, :default => true
    CustomField.update_all("visible = #{CustomField.connection.quoted_true}")
  end

  def self.down
    remove_column :custom_fields, :visible
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
