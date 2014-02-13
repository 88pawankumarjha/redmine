<<<<<<< HEAD
class SetLanguageLengthToFive < ActiveRecord::Migration
  def self.up
    change_column :users, :language, :string, :limit => 5, :default => ""
  end

  def self.down
    raise IrreversibleMigration
  end
end
=======
class SetLanguageLengthToFive < ActiveRecord::Migration
  def self.up
    change_column :users, :language, :string, :limit => 5, :default => ""
  end

  def self.down
    raise IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
