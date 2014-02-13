<<<<<<< HEAD
class AddChangesetsScmid < ActiveRecord::Migration
  def self.up
    add_column :changesets, :scmid, :string
  end

  def self.down
    remove_column :changesets, :scmid
  end
end
=======
class AddChangesetsScmid < ActiveRecord::Migration
  def self.up
    add_column :changesets, :scmid, :string
  end

  def self.down
    remove_column :changesets, :scmid
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
