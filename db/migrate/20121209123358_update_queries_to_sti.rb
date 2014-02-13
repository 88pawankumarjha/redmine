<<<<<<< HEAD
class UpdateQueriesToSti < ActiveRecord::Migration
  def up
    ::Query.update_all :type => 'IssueQuery'
  end

  def down
    ::Query.update_all :type => nil
  end
end
=======
class UpdateQueriesToSti < ActiveRecord::Migration
  def up
    ::Query.update_all :type => 'IssueQuery'
  end

  def down
    ::Query.update_all :type => nil
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
