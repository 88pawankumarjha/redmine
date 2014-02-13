<<<<<<< HEAD
class AddSettingsUpdatedOn < ActiveRecord::Migration
  def self.up
    add_column :settings, :updated_on, :timestamp
    # set updated_on
    Setting.all.each(&:save)
  end

  def self.down
    remove_column :settings, :updated_on
  end
end
=======
class AddSettingsUpdatedOn < ActiveRecord::Migration
  def self.up
    add_column :settings, :updated_on, :timestamp
    # set updated_on
    Setting.all.each(&:save)
  end

  def self.down
    remove_column :settings, :updated_on
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
