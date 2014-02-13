<<<<<<< HEAD
class FixMessagesStickyNull < ActiveRecord::Migration
  def self.up
    Message.update_all('sticky = 0', 'sticky IS NULL')
  end

  def self.down
    # nothing to do
  end
end
=======
class FixMessagesStickyNull < ActiveRecord::Migration
  def self.up
    Message.where('sticky IS NULL').update_all('sticky = 0')
  end

  def self.down
    # nothing to do
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
