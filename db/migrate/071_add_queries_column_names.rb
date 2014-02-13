<<<<<<< HEAD
class AddQueriesColumnNames < ActiveRecord::Migration
  def self.up
    add_column :queries, :column_names, :text
  end

  def self.down
    remove_column :queries, :column_names
  end
end
=======
class AddQueriesColumnNames < ActiveRecord::Migration
  def self.up
    add_column :queries, :column_names, :text
  end

  def self.down
    remove_column :queries, :column_names
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
