<<<<<<< HEAD
class AddMissingIndexesToCustomFieldsTrackers < ActiveRecord::Migration
  def self.up
    add_index :custom_fields_trackers, [:custom_field_id, :tracker_id]
  end

  def self.down
    remove_index :custom_fields_trackers, :column => [:custom_field_id, :tracker_id]
  end
end
=======
class AddMissingIndexesToCustomFieldsTrackers < ActiveRecord::Migration
  def self.up
    add_index :custom_fields_trackers, [:custom_field_id, :tracker_id]
  end

  def self.down
    remove_index :custom_fields_trackers, :column => [:custom_field_id, :tracker_id]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
