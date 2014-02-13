<<<<<<< HEAD
class UpdateEnumerationsToSti < ActiveRecord::Migration
  def self.up
    Enumeration.update_all("type = 'IssuePriority'", "opt = 'IPRI'")
    Enumeration.update_all("type = 'DocumentCategory'", "opt = 'DCAT'")
    Enumeration.update_all("type = 'TimeEntryActivity'", "opt = 'ACTI'")
  end

  def self.down
    # no-op
  end
end
=======
class UpdateEnumerationsToSti < ActiveRecord::Migration
  def self.up
    Enumeration.where("opt = 'IPRI'").update_all("type = 'IssuePriority'")
    Enumeration.where("opt = 'DCAT'").update_all("type = 'DocumentCategory'")
    Enumeration.where("opt = 'ACTI'").update_all("type = 'TimeEntryActivity'")
  end

  def self.down
    # no-op
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
