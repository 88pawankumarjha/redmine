<<<<<<< HEAD
class ChangeVersionsNameLimit < ActiveRecord::Migration
  def self.up
    change_column :versions, :name, :string, :limit => nil
  end

  def self.down
    change_column :versions, :name, :string, :limit => 30
  end
end
=======
class ChangeVersionsNameLimit < ActiveRecord::Migration
  def self.up
    change_column :versions, :name, :string, :limit => nil
  end

  def self.down
    change_column :versions, :name, :string, :limit => 30
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
