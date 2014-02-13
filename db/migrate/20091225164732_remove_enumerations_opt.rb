<<<<<<< HEAD
class RemoveEnumerationsOpt < ActiveRecord::Migration
  def self.up
    remove_column :enumerations, :opt
  end

  def self.down
    add_column :enumerations, :opt, :string, :limit => 4, :default => '', :null => false
    Enumeration.update_all("opt = 'IPRI'", "type = 'IssuePriority'")
    Enumeration.update_all("opt = 'DCAT'", "type = 'DocumentCategory'")
    Enumeration.update_all("opt = 'ACTI'", "type = 'TimeEntryActivity'")
  end
end
=======
class RemoveEnumerationsOpt < ActiveRecord::Migration
  def self.up
    remove_column :enumerations, :opt
  end

  def self.down
    add_column :enumerations, :opt, :string, :limit => 4, :default => '', :null => false
    Enumeration.update_all("opt = 'IPRI'", "type = 'IssuePriority'")
    Enumeration.update_all("opt = 'DCAT'", "type = 'DocumentCategory'")
    Enumeration.update_all("opt = 'ACTI'", "type = 'TimeEntryActivity'")
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
