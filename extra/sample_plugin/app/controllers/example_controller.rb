<<<<<<< HEAD
# Sample plugin controller
class ExampleController < ApplicationController
  unloadable

  layout 'base'
  before_filter :find_project, :authorize
  menu_item :sample_plugin

  def say_hello
    @value = Setting.plugin_sample_plugin['sample_setting']
  end

  def say_goodbye
  end

private
  def find_project
    @project=Project.find(params[:id])
  end
end
=======
# Sample plugin controller
class ExampleController < ApplicationController
  unloadable

  layout 'base'
  before_filter :find_project, :authorize
  menu_item :sample_plugin

  def say_hello
    @value = Setting.plugin_sample_plugin['sample_setting']
  end

  def say_goodbye
  end

private
  def find_project
    @project=Project.find(params[:id])
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
