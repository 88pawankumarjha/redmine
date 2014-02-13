<<<<<<< HEAD
module OpenIdAuthentication
  module Request
    def self.included(base)
      base.alias_method_chain :request_method, :openid
    end

    def request_method_with_openid
      if !parameters[:_method].blank? && parameters[:open_id_complete] == '1'
        parameters[:_method].to_sym
      else
        request_method_without_openid
      end
    end
  end
end

# In Rails 2.3, the request object has been renamed
# from AbstractRequest to Request
if defined? ActionController::Request
  ActionController::Request.send :include, OpenIdAuthentication::Request
else
  ActionController::AbstractRequest.send :include, OpenIdAuthentication::Request
end
=======
module OpenIdAuthentication
  module Request
    def self.included(base)
      base.alias_method_chain :request_method, :openid
    end

    def request_method_with_openid
      if !parameters[:_method].blank? && parameters[:open_id_complete] == '1'
        parameters[:_method].to_sym
      else
        request_method_without_openid
      end
    end
  end
end

# In Rails 2.3, the request object has been renamed
# from AbstractRequest to Request
if defined? ActionController::Request
  ActionController::Request.send :include, OpenIdAuthentication::Request
else
  ActionController::AbstractRequest.send :include, OpenIdAuthentication::Request
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
