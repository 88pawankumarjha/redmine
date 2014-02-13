<<<<<<< HEAD
class AddMissingIndexesToTokens < ActiveRecord::Migration
  def self.up
    add_index :tokens, :user_id
  end

  def self.down
    remove_index :tokens, :user_id
  end
end
=======
class AddMissingIndexesToTokens < ActiveRecord::Migration
  def self.up
    add_index :tokens, :user_id
  end

  def self.down
    remove_index :tokens, :user_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
