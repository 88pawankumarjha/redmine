<<<<<<< HEAD
class AddAttachmentsDescription < ActiveRecord::Migration
  def self.up
    add_column :attachments, :description, :string
  end

  def self.down
    remove_column :attachments, :description
  end
end
=======
class AddAttachmentsDescription < ActiveRecord::Migration
  def self.up
    add_column :attachments, :description, :string
  end

  def self.down
    remove_column :attachments, :description
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
