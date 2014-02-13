<<<<<<< HEAD
class ChangeJournalDetailsValuesToText < ActiveRecord::Migration
  def self.up
    change_column :journal_details, :old_value, :text
    change_column :journal_details, :value, :text
  end

  def self.down
    change_column :journal_details, :old_value, :string
    change_column :journal_details, :value, :string
  end
end
=======
class ChangeJournalDetailsValuesToText < ActiveRecord::Migration
  def self.up
    change_column :journal_details, :old_value, :text
    change_column :journal_details, :value, :text
  end

  def self.down
    change_column :journal_details, :old_value, :string
    change_column :journal_details, :value, :string
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
