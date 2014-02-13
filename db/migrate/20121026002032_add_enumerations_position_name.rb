<<<<<<< HEAD
class AddEnumerationsPositionName < ActiveRecord::Migration
  def up
    add_column :enumerations, :position_name, :string, :limit => 30
  end

  def down
    remove_column :enumerations, :position_name
  end
end
=======
class AddEnumerationsPositionName < ActiveRecord::Migration
  def up
    add_column :enumerations, :position_name, :string, :limit => 30
  end

  def down
    remove_column :enumerations, :position_name
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
