<<<<<<< HEAD
class AddMissingIndexesToMessages < ActiveRecord::Migration
  def self.up
    add_index :messages, :last_reply_id
    add_index :messages, :author_id
  end

  def self.down
    remove_index :messages, :last_reply_id
    remove_index :messages, :author_id
  end
end
=======
class AddMissingIndexesToMessages < ActiveRecord::Migration
  def self.up
    add_index :messages, :last_reply_id
    add_index :messages, :author_id
  end

  def self.down
    remove_index :messages, :last_reply_id
    remove_index :messages, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
