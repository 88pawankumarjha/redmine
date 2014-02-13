<<<<<<< HEAD
require 'test/unit'
require 'rubygems'

gem 'activesupport'
require 'active_support'

gem 'actionpack'
require 'action_controller'

gem 'mocha'
require 'mocha/setup'

gem 'ruby-openid'
require 'openid'

RAILS_ROOT = File.dirname(__FILE__) unless defined? RAILS_ROOT
require File.dirname(__FILE__) + "/../lib/open_id_authentication"
=======
require 'test/unit'
require 'rubygems'

gem 'activesupport'
require 'active_support'

gem 'actionpack'
require 'action_controller'

gem 'mocha'
require 'mocha/setup'

gem 'ruby-openid'
require 'openid'

RAILS_ROOT = File.dirname(__FILE__) unless defined? RAILS_ROOT
require File.dirname(__FILE__) + "/../lib/open_id_authentication"
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
