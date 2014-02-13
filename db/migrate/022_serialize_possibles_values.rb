<<<<<<< HEAD
class SerializePossiblesValues < ActiveRecord::Migration
  def self.up
    CustomField.all.each do |field|
      if field.possible_values and field.possible_values.is_a? String
        field.possible_values = field.possible_values.split('|')
        field.save
      end
    end
  end

  def self.down
  end
end
=======
class SerializePossiblesValues < ActiveRecord::Migration
  def self.up
    CustomField.all.each do |field|
      if field.possible_values and field.possible_values.is_a? String
        field.possible_values = field.possible_values.split('|')
        field.save
      end
    end
  end

  def self.down
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
