<<<<<<< HEAD
class SaltUserPasswords < ActiveRecord::Migration
  
  def self.up
    say_with_time "Salting user passwords, this may take some time..." do
      User.salt_unsalted_passwords!
    end
  end

  def self.down
    # Unsalted passwords can not be restored
    raise ActiveRecord::IrreversibleMigration, "Can't decypher salted passwords. This migration can not be rollback'ed."
  end
end
=======
class SaltUserPasswords < ActiveRecord::Migration
  
  def self.up
    say_with_time "Salting user passwords, this may take some time..." do
      User.salt_unsalted_passwords!
    end
  end

  def self.down
    # Unsalted passwords can not be restored
    raise ActiveRecord::IrreversibleMigration, "Can't decypher salted passwords. This migration can not be rollback'ed."
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
