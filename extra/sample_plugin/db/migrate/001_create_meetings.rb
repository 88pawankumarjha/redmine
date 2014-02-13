<<<<<<< HEAD
# Sample plugin migration
# Use rake db:migrate_plugins to migrate installed plugins
class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.column :project_id, :integer, :null => false
      t.column :description, :string
      t.column :scheduled_on, :datetime
    end
  end

  def self.down
    drop_table :meetings
  end
end
=======
# Sample plugin migration
# Use rake db:migrate_plugins to migrate installed plugins
class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.column :project_id, :integer, :null => false
      t.column :description, :string
      t.column :scheduled_on, :datetime
    end
  end

  def self.down
    drop_table :meetings
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
