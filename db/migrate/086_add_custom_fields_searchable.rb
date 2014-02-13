<<<<<<< HEAD
class AddCustomFieldsSearchable < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :searchable, :boolean, :default => false
  end

  def self.down
    remove_column :custom_fields, :searchable
  end
end
=======
class AddCustomFieldsSearchable < ActiveRecord::Migration
  def self.up
    add_column :custom_fields, :searchable, :boolean, :default => false
  end

  def self.down
    remove_column :custom_fields, :searchable
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
