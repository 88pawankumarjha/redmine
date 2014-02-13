<<<<<<< HEAD
class AddAuthSourcesFilter < ActiveRecord::Migration
  def self.up
    add_column :auth_sources, :filter, :string
  end

  def self.down
    remove_column :auth_sources, :filter
  end
end
=======
class AddAuthSourcesFilter < ActiveRecord::Migration
  def self.up
    add_column :auth_sources, :filter, :string
  end

  def self.down
    remove_column :auth_sources, :filter
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
