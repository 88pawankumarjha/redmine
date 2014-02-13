<<<<<<< HEAD
class AddRepositoryRootUrl < ActiveRecord::Migration
  def self.up
    add_column :repositories, :root_url, :string, :limit => 255, :default => ""
  end

  def self.down
    remove_column :repositories, :root_url
  end
end
=======
class AddRepositoryRootUrl < ActiveRecord::Migration
  def self.up
    add_column :repositories, :root_url, :string, :limit => 255, :default => ""
  end

  def self.down
    remove_column :repositories, :root_url
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
