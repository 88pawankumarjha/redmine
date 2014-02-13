<<<<<<< HEAD
class AddRepositoriesIsDefault < ActiveRecord::Migration
  def self.up
    add_column :repositories, :is_default, :boolean, :default => false
  end

  def self.down
    remove_column :repositories, :is_default
  end
end
=======
class AddRepositoriesIsDefault < ActiveRecord::Migration
  def self.up
    add_column :repositories, :is_default, :boolean, :default => false
  end

  def self.down
    remove_column :repositories, :is_default
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
