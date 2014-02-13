<<<<<<< HEAD
class AddAuthSourcesTimeout < ActiveRecord::Migration
  def up
    add_column :auth_sources, :timeout, :integer
  end

  def self.down
    remove_column :auth_sources, :timeout
  end
end
=======
class AddAuthSourcesTimeout < ActiveRecord::Migration
  def up
    add_column :auth_sources, :timeout, :integer
  end

  def self.down
    remove_column :auth_sources, :timeout
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
