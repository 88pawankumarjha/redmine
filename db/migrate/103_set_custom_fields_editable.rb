<<<<<<< HEAD
class SetCustomFieldsEditable < ActiveRecord::Migration
  def self.up
    UserCustomField.update_all("editable = #{CustomField.connection.quoted_false}")
  end

  def self.down
    UserCustomField.update_all("editable = #{CustomField.connection.quoted_true}")
  end
end
=======
class SetCustomFieldsEditable < ActiveRecord::Migration
  def self.up
    UserCustomField.update_all("editable = #{CustomField.connection.quoted_false}")
  end

  def self.down
    UserCustomField.update_all("editable = #{CustomField.connection.quoted_true}")
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
