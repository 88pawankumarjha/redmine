<<<<<<< HEAD
class AddMissingIndexesToBoards < ActiveRecord::Migration
  def self.up
    add_index :boards, :last_message_id
  end

  def self.down
    remove_index :boards, :last_message_id
  end
end
=======
class AddMissingIndexesToBoards < ActiveRecord::Migration
  def self.up
    add_index :boards, :last_message_id
  end

  def self.down
    remove_index :boards, :last_message_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
