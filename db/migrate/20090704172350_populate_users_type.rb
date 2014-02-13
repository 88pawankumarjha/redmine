<<<<<<< HEAD
class PopulateUsersType < ActiveRecord::Migration
  def self.up
    Principal.update_all("type = 'User'", "type IS NULL")
  end

  def self.down
  end
end
=======
class PopulateUsersType < ActiveRecord::Migration
  def self.up
    Principal.where("type IS NULL").update_all("type = 'User'")
  end

  def self.down
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
