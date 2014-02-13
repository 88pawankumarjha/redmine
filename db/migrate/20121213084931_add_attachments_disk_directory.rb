<<<<<<< HEAD
class AddAttachmentsDiskDirectory < ActiveRecord::Migration
  def up
    add_column :attachments, :disk_directory, :string
  end

  def down
    remove_column :attachments, :disk_directory
  end
end
=======
class AddAttachmentsDiskDirectory < ActiveRecord::Migration
  def up
    add_column :attachments, :disk_directory, :string
  end

  def down
    remove_column :attachments, :disk_directory
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
