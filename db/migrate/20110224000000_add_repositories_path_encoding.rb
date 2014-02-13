<<<<<<< HEAD
class AddRepositoriesPathEncoding < ActiveRecord::Migration
  def self.up
    add_column :repositories, :path_encoding, :string, :limit => 64, :default => nil
  end

  def self.down
    remove_column :repositories, :path_encoding
  end
end
=======
class AddRepositoriesPathEncoding < ActiveRecord::Migration
  def self.up
    add_column :repositories, :path_encoding, :string, :limit => 64, :default => nil
  end

  def self.down
    remove_column :repositories, :path_encoding
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
