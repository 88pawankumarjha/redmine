<<<<<<< HEAD
class AddAuthSourcesTls < ActiveRecord::Migration
  def self.up
    add_column :auth_sources, :tls, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :auth_sources, :tls
  end
end
=======
class AddAuthSourcesTls < ActiveRecord::Migration
  def self.up
    add_column :auth_sources, :tls, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :auth_sources, :tls
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
