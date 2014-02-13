<<<<<<< HEAD
class ChangeChangesetsCommitterLimit < ActiveRecord::Migration
  def self.up
    change_column :changesets, :committer, :string, :limit => nil
  end

  def self.down
    change_column :changesets, :committer, :string, :limit => 30
  end
end
=======
class ChangeChangesetsCommitterLimit < ActiveRecord::Migration
  def self.up
    change_column :changesets, :committer, :string, :limit => nil
  end

  def self.down
    change_column :changesets, :committer, :string, :limit => 30
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
