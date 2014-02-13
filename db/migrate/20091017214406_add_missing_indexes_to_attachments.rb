<<<<<<< HEAD
class AddMissingIndexesToAttachments < ActiveRecord::Migration
  def self.up
    add_index :attachments, [:container_id, :container_type]
    add_index :attachments, :author_id
  end

  def self.down
    remove_index :attachments, :column => [:container_id, :container_type]
    remove_index :attachments, :author_id
  end
end
=======
class AddMissingIndexesToAttachments < ActiveRecord::Migration
  def self.up
    add_index :attachments, [:container_id, :container_type]
    add_index :attachments, :author_id
  end

  def self.down
    remove_index :attachments, :column => [:container_id, :container_type]
    remove_index :attachments, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
