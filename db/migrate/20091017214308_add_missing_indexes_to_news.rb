<<<<<<< HEAD
class AddMissingIndexesToNews < ActiveRecord::Migration
  def self.up
    add_index :news, :author_id
  end

  def self.down
    remove_index :news, :author_id
  end
end
=======
class AddMissingIndexesToNews < ActiveRecord::Migration
  def self.up
    add_index :news, :author_id
  end

  def self.down
    remove_index :news, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
