<<<<<<< HEAD
class Landmark < ActiveRecord::Base
  acts_as_versioned :if_changed => [ :name, :longitude, :latitude ]
end
=======
class Landmark < ActiveRecord::Base
  acts_as_versioned :if_changed => [ :name, :longitude, :latitude ]
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
