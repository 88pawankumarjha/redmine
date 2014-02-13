<<<<<<< HEAD
class Widget < ActiveRecord::Base
  acts_as_versioned :sequence_name => 'widgets_seq', :association_options => {
    :dependent => :nullify, :order => 'version desc'
  }
  non_versioned_columns << 'foo'
=======
class Widget < ActiveRecord::Base
  acts_as_versioned :sequence_name => 'widgets_seq', :association_options => {
    :dependent => :nullify, :order => 'version desc'
  }
  non_versioned_columns << 'foo'
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
end