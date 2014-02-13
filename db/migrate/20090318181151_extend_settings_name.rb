<<<<<<< HEAD
class ExtendSettingsName < ActiveRecord::Migration
  def self.up
    change_column :settings, :name, :string, :limit => 255, :default => '', :null => false
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
=======
class ExtendSettingsName < ActiveRecord::Migration
  def self.up
    change_column :settings, :name, :string, :limit => 255, :default => '', :null => false
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
