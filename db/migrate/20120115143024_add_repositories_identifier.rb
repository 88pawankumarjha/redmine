<<<<<<< HEAD
class AddRepositoriesIdentifier < ActiveRecord::Migration
  def self.up
    add_column :repositories, :identifier, :string
  end

  def self.down
    remove_column :repositories, :identifier
  end
end
=======
class AddRepositoriesIdentifier < ActiveRecord::Migration
  def self.up
    add_column :repositories, :identifier, :string
  end

  def self.down
    remove_column :repositories, :identifier
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
