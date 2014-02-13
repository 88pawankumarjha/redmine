<<<<<<< HEAD
class AddQueriesType < ActiveRecord::Migration
  def up
    add_column :queries, :type, :string
  end

  def down
    remove_column :queries, :type
  end
end
=======
class AddQueriesType < ActiveRecord::Migration
  def up
    add_column :queries, :type, :string
  end

  def down
    remove_column :queries, :type
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
