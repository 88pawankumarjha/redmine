<<<<<<< HEAD
class AddIssuesClosedOn < ActiveRecord::Migration
  def up
    add_column :issues, :closed_on, :datetime, :default => nil
  end

  def down
    remove_column :issues, :closed_on
  end
end
=======
class AddIssuesClosedOn < ActiveRecord::Migration
  def up
    add_column :issues, :closed_on, :datetime, :default => nil
  end

  def down
    remove_column :issues, :closed_on
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
