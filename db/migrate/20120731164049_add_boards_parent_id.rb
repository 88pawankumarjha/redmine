<<<<<<< HEAD
class AddBoardsParentId < ActiveRecord::Migration
  def up
    add_column :boards, :parent_id, :integer
  end

  def down
    remove_column :boards, :parent_id
  end
end
=======
class AddBoardsParentId < ActiveRecord::Migration
  def up
    add_column :boards, :parent_id, :integer
  end

  def down
    remove_column :boards, :parent_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
