<<<<<<< HEAD
class CreateMemberRoles < ActiveRecord::Migration
  def self.up
    create_table :member_roles do |t|
      t.column :member_id, :integer, :null => false
      t.column :role_id, :integer, :null => false
    end
  end

  def self.down
    drop_table :member_roles
  end
end
=======
class CreateMemberRoles < ActiveRecord::Migration
  def self.up
    create_table :member_roles do |t|
      t.column :member_id, :integer, :null => false
      t.column :role_id, :integer, :null => false
    end
  end

  def self.down
    drop_table :member_roles
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
