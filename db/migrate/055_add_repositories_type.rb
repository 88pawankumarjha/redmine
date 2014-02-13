<<<<<<< HEAD
class AddRepositoriesType < ActiveRecord::Migration
  def self.up
    add_column :repositories, :type, :string
    # Set class name for existing SVN repositories
    Repository.update_all "type = 'Subversion'"
  end

  def self.down
    remove_column :repositories, :type
  end
end
=======
class AddRepositoriesType < ActiveRecord::Migration
  def self.up
    add_column :repositories, :type, :string
    # Set class name for existing SVN repositories
    Repository.update_all "type = 'Subversion'"
  end

  def self.down
    remove_column :repositories, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
