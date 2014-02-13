<<<<<<< HEAD
class AddJournalsPrivateNotes < ActiveRecord::Migration
  def up
    add_column :journals, :private_notes, :boolean, :default => false, :null => false
  end

  def down
    remove_column :journals, :private_notes
  end
end
=======
class AddJournalsPrivateNotes < ActiveRecord::Migration
  def up
    add_column :journals, :private_notes, :boolean, :default => false, :null => false
  end

  def down
    remove_column :journals, :private_notes
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
