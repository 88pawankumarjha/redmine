<<<<<<< HEAD
class CreateWatchers < ActiveRecord::Migration
  def self.up
    create_table :watchers do |t|
      t.column :watchable_type, :string, :default => "", :null => false
      t.column :watchable_id, :integer, :default => 0, :null => false
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :watchers
  end
end
=======
class CreateWatchers < ActiveRecord::Migration
  def self.up
    create_table :watchers do |t|
      t.column :watchable_type, :string, :default => "", :null => false
      t.column :watchable_id, :integer, :default => 0, :null => false
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :watchers
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
