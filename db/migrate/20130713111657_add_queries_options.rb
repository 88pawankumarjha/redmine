<<<<<<< HEAD
class AddQueriesOptions < ActiveRecord::Migration
  def up
    add_column :queries, :options, :text
  end

  def down
    remove_column :queries, :options
  end
end
=======
class AddQueriesOptions < ActiveRecord::Migration
  def up
    add_column :queries, :options, :text
  end

  def down
    remove_column :queries, :options
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
