<<<<<<< HEAD
class AddChangesRevision < ActiveRecord::Migration
  def self.up
    add_column :changes, :revision, :string
  end

  def self.down
    remove_column :changes, :revision
  end
end
=======
class AddChangesRevision < ActiveRecord::Migration
  def self.up
    add_column :changes, :revision, :string
  end

  def self.down
    remove_column :changes, :revision
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
