<<<<<<< HEAD
class Meeting < ActiveRecord::Base
  belongs_to :project

  acts_as_event :title => Proc.new {|o| "#{o.scheduled_on} Meeting"},
                :datetime => :scheduled_on,
                :author => nil,
                :url => Proc.new {|o| {:controller => 'meetings', :action => 'show', :id => o.id}}

  acts_as_activity_provider :timestamp => 'scheduled_on',
                            :find_options => { :include => :project }
end
=======
class Meeting < ActiveRecord::Base
  belongs_to :project

  acts_as_event :title => Proc.new {|o| "#{o.scheduled_on} Meeting"},
                :datetime => :scheduled_on,
                :author => nil,
                :url => Proc.new {|o| {:controller => 'meetings', :action => 'show', :id => o.id}}

  acts_as_activity_provider :timestamp => 'scheduled_on',
                            :find_options => { :include => :project }
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
