<<<<<<< HEAD
class AddQueriesGroupBy < ActiveRecord::Migration
  def self.up
    add_column :queries, :group_by, :string
  end

  def self.down
    remove_column :queries, :group_by
  end
end
=======
class AddQueriesGroupBy < ActiveRecord::Migration
  def self.up
    add_column :queries, :group_by, :string
  end

  def self.down
    remove_column :queries, :group_by
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
