<<<<<<< HEAD
class AddMissingIndexesToAuthSources < ActiveRecord::Migration
  def self.up
    add_index :auth_sources, [:id, :type]
  end

  def self.down
    remove_index :auth_sources, :column => [:id, :type]
  end
end
=======
class AddMissingIndexesToAuthSources < ActiveRecord::Migration
  def self.up
    add_index :auth_sources, [:id, :type]
  end

  def self.down
    remove_index :auth_sources, :column => [:id, :type]
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
