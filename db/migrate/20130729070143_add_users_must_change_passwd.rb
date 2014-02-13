<<<<<<< HEAD
class AddUsersMustChangePasswd < ActiveRecord::Migration
  def up
    add_column :users, :must_change_passwd, :boolean, :default => false, :null => false
  end

  def down
    remove_column :users, :must_change_passwd
  end
end
=======
class AddUsersMustChangePasswd < ActiveRecord::Migration
  def up
    add_column :users, :must_change_passwd, :boolean, :default => false, :null => false
  end

  def down
    remove_column :users, :must_change_passwd
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
