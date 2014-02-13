<<<<<<< HEAD
class ChangeAttachmentsContentTypeLimit < ActiveRecord::Migration
  def self.up
    change_column :attachments, :content_type, :string, :limit => nil
  end

  def self.down
    change_column :attachments, :content_type, :string, :limit => 60
  end
end
=======
class ChangeAttachmentsContentTypeLimit < ActiveRecord::Migration
  def self.up
    change_column :attachments, :content_type, :string, :limit => nil
  end

  def self.down
    change_column :attachments, :content_type, :string, :limit => 60
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
