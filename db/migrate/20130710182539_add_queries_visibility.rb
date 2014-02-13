<<<<<<< HEAD
class AddQueriesVisibility < ActiveRecord::Migration
  def up
    add_column :queries, :visibility, :integer, :default => 0
    Query.where(:is_public => true).update_all(:visibility => 2)
    remove_column :queries, :is_public
  end

  def down
    add_column :queries, :is_public, :boolean, :default => true, :null => false
    Query.where('visibility <> ?', 2).update_all(:is_public => false)
    remove_column :queries, :visibility
  end
end
=======
class AddQueriesVisibility < ActiveRecord::Migration
  def up
    add_column :queries, :visibility, :integer, :default => 0
    Query.where(:is_public => true).update_all(:visibility => 2)
    remove_column :queries, :is_public
  end

  def down
    add_column :queries, :is_public, :boolean, :default => true, :null => false
    Query.where('visibility <> ?', 2).update_all(:is_public => false)
    remove_column :queries, :visibility
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
