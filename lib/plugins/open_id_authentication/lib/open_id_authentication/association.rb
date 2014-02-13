<<<<<<< HEAD
module OpenIdAuthentication
  class Association < ActiveRecord::Base
    self.table_name = :open_id_authentication_associations

    def from_record
      OpenID::Association.new(handle, secret, issued, lifetime, assoc_type)
    end
  end
end
=======
module OpenIdAuthentication
  class Association < ActiveRecord::Base
    self.table_name = :open_id_authentication_associations

    def from_record
      OpenID::Association.new(handle, secret, issued, lifetime, assoc_type)
    end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
