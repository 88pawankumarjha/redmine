<<<<<<< HEAD
class PopulateMemberRoles < ActiveRecord::Migration
  def self.up
    MemberRole.delete_all
    Member.all.each do |member|
      MemberRole.create!(:member_id => member.id, :role_id => member.role_id)
    end
  end

  def self.down
    MemberRole.delete_all
  end
end
=======
class PopulateMemberRoles < ActiveRecord::Migration
  def self.up
    MemberRole.delete_all
    Member.all.each do |member|
      MemberRole.create!(:member_id => member.id, :role_id => member.role_id)
    end
  end

  def self.down
    MemberRole.delete_all
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
