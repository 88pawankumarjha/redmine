<<<<<<< HEAD
if Rails.version < '3'
  config.gem 'rack-openid', :lib => 'rack/openid', :version => '>=0.2.1'
end

require 'open_id_authentication'

config.middleware.use OpenIdAuthentication

config.after_initialize do
  OpenID::Util.logger = Rails.logger
  ActionController::Base.send :include, OpenIdAuthentication
end
=======
if Rails.version < '3'
  config.gem 'rack-openid', :lib => 'rack/openid', :version => '>=0.2.1'
end

require 'open_id_authentication'

config.middleware.use OpenIdAuthentication

config.after_initialize do
  OpenID::Util.logger = Rails.logger
  ActionController::Base.send :include, OpenIdAuthentication
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
