<<<<<<< HEAD

require File.expand_path(File.dirname(__FILE__) + '../../../../../test/test_helper')

class SamplePluginRoutingTest < ActionDispatch::IntegrationTest
  def test_example
    assert_routing(
        { :method => 'get', :path => "/projects/1234/hello" },
        { :controller => 'example', :action => 'say_hello',
          :id => '1234' }
      )
  end
end
=======

require File.expand_path(File.dirname(__FILE__) + '../../../../../test/test_helper')

class SamplePluginRoutingTest < ActionDispatch::IntegrationTest
  def test_example
    assert_routing(
        { :method => 'get', :path => "/projects/1234/hello" },
        { :controller => 'example', :action => 'say_hello',
          :id => '1234' }
      )
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
