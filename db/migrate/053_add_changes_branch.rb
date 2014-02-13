<<<<<<< HEAD
class AddChangesBranch < ActiveRecord::Migration
  def self.up
    add_column :changes, :branch, :string
  end

  def self.down
    remove_column :changes, :branch
  end
end
=======
class AddChangesBranch < ActiveRecord::Migration
  def self.up
    add_column :changes, :branch, :string
  end

  def self.down
    remove_column :changes, :branch
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
