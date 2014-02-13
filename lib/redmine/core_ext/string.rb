<<<<<<< HEAD
require File.dirname(__FILE__) + '/string/conversions'
require File.dirname(__FILE__) + '/string/inflections'

class String #:nodoc:
  include Redmine::CoreExtensions::String::Conversions
  include Redmine::CoreExtensions::String::Inflections

  def is_binary_data?
    ( self.count( "^ -~", "^\r\n" ).fdiv(self.size) > 0.3 || self.index( "\x00" ) ) unless empty?
  end
end
=======
require File.dirname(__FILE__) + '/string/conversions'
require File.dirname(__FILE__) + '/string/inflections'

class String #:nodoc:
  include Redmine::CoreExtensions::String::Conversions
  include Redmine::CoreExtensions::String::Inflections

  def is_binary_data?
    ( self.count( "^ -~", "^\r\n" ).fdiv(self.size) > 0.3 || self.index( "\x00" ) ) unless empty?
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
