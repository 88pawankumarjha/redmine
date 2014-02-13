<<<<<<< HEAD
class AddIndexOnChangesetsScmid < ActiveRecord::Migration
  def self.up
    add_index :changesets, [:repository_id, :scmid], :name => :changesets_repos_scmid
  end

  def self.down
    remove_index :changesets, :name => :changesets_repos_scmid
  end
end
=======
class AddIndexOnChangesetsScmid < ActiveRecord::Migration
  def self.up
    add_index :changesets, [:repository_id, :scmid], :name => :changesets_repos_scmid
  end

  def self.down
    remove_index :changesets, :name => :changesets_repos_scmid
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
