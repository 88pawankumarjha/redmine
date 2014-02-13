<<<<<<< HEAD
class ChangeChangesFromRevisionToString < ActiveRecord::Migration
  def self.up
    change_column :changes, :from_revision, :string
  end

  def self.down
    change_column :changes, :from_revision, :integer
  end
end
=======
class ChangeChangesFromRevisionToString < ActiveRecord::Migration
  def self.up
    change_column :changes, :from_revision, :string
  end

  def self.down
    change_column :changes, :from_revision, :integer
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
