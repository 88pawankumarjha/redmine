<<<<<<< HEAD
class AddChangesetCommitDate < ActiveRecord::Migration
  def self.up
    add_column :changesets, :commit_date, :date
    Changeset.update_all "commit_date = committed_on"
  end

  def self.down
    remove_column :changesets, :commit_date
  end
end
=======
class AddChangesetCommitDate < ActiveRecord::Migration
  def self.up
    add_column :changesets, :commit_date, :date
    Changeset.update_all "commit_date = committed_on"
  end

  def self.down
    remove_column :changesets, :commit_date
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
