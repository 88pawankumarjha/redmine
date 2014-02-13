<<<<<<< HEAD
class FixUsersCustomValues < ActiveRecord::Migration
  def self.up
    CustomValue.update_all("customized_type = 'Principal'", "customized_type = 'User'")
  end

  def self.down
    CustomValue.update_all("customized_type = 'User'", "customized_type = 'Principal'")
  end
end
=======
class FixUsersCustomValues < ActiveRecord::Migration
  def self.up
    CustomValue.where("customized_type = 'User'").
      update_all("customized_type = 'Principal'")
  end

  def self.down
    CustomValue.where("customized_type = 'Principal'").
      update_all("customized_type = 'User'")
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
