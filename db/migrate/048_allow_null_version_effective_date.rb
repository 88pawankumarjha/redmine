<<<<<<< HEAD
class AllowNullVersionEffectiveDate < ActiveRecord::Migration
  def self.up
    change_column :versions, :effective_date, :date, :default => nil, :null => true
  end

  def self.down
    raise IrreversibleMigration
  end
end
=======
class AllowNullVersionEffectiveDate < ActiveRecord::Migration
  def self.up
    change_column :versions, :effective_date, :date, :default => nil, :null => true
  end

  def self.down
    raise IrreversibleMigration
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
