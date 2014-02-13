<<<<<<< HEAD
class RemoveEolsFromAttachmentsFilename < ActiveRecord::Migration
  def up
    Attachment.where("filename like ? or filename like ?", "%\r%", "%\n%").each do |attachment|
      filename = attachment.filename.to_s.tr("\r\n", "_")
      Attachment.where(:id => attachment.id).update_all(:filename => filename)
    end
  end

  def down
    # nop
  end
end
=======
class RemoveEolsFromAttachmentsFilename < ActiveRecord::Migration
  def up
    Attachment.where("filename like ? or filename like ?", "%\r%", "%\n%").each do |attachment|
      filename = attachment.filename.to_s.tr("\r\n", "_")
      Attachment.where(:id => attachment.id).update_all(:filename => filename)
    end
  end

  def down
    # nop
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
