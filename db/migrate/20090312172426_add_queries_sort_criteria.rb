<<<<<<< HEAD
class AddQueriesSortCriteria < ActiveRecord::Migration
  def self.up
    add_column :queries, :sort_criteria, :text
  end

  def self.down
    remove_column :queries, :sort_criteria
  end
end
=======
class AddQueriesSortCriteria < ActiveRecord::Migration
  def self.up
    add_column :queries, :sort_criteria, :text
  end

  def self.down
    remove_column :queries, :sort_criteria
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
