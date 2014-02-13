<<<<<<< HEAD
class AddRepositoriesExtraInfo < ActiveRecord::Migration
  def self.up
    add_column :repositories, :extra_info, :text
  end

  def self.down
    remove_column :repositories, :extra_info
  end
end
=======
class AddRepositoriesExtraInfo < ActiveRecord::Migration
  def self.up
    add_column :repositories, :extra_info, :text
  end

  def self.down
    remove_column :repositories, :extra_info
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
