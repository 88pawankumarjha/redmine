<<<<<<< HEAD
class CopyRepositoriesLogEncoding < ActiveRecord::Migration
  def self.up
    encoding = Setting.commit_logs_encoding.to_s.strip
    encoding = encoding.blank? ? 'UTF-8' : encoding
    # encoding is NULL by default
    Repository.update_all(["log_encoding = ?", encoding], "type IN ('Bazaar', 'Cvs', 'Darcs')")
  end

  def self.down
  end
end
=======
class CopyRepositoriesLogEncoding < ActiveRecord::Migration
  def self.up
    encoding = Setting.commit_logs_encoding.to_s.strip
    encoding = encoding.blank? ? 'UTF-8' : encoding
    # encoding is NULL by default
    Repository.where("type IN ('Bazaar', 'Cvs', 'Darcs')").
                 update_all(["log_encoding = ?", encoding])
  end

  def self.down
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
