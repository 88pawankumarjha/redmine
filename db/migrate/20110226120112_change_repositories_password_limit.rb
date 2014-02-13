<<<<<<< HEAD
class ChangeRepositoriesPasswordLimit < ActiveRecord::Migration
  def self.up
    change_column :repositories, :password, :string, :limit => nil, :default => ''
  end

  def self.down
    change_column :repositories, :password, :string, :limit => 60, :default => ''
  end
end
=======
class ChangeRepositoriesPasswordLimit < ActiveRecord::Migration
  def self.up
    change_column :repositories, :password, :string, :limit => nil, :default => ''
  end

  def self.down
    change_column :repositories, :password, :string, :limit => 60, :default => ''
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
