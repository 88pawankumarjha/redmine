<<<<<<< HEAD
# http://trac.openidenabled.com/trac/ticket/156
module OpenID
  @@timeout_threshold = 20

  def self.timeout_threshold
    @@timeout_threshold
  end

  def self.timeout_threshold=(value)
    @@timeout_threshold = value
  end

  class StandardFetcher
    def make_http(uri)
      http = @proxy.new(uri.host, uri.port)
      http.read_timeout = http.open_timeout = OpenID.timeout_threshold
      http
    end
  end
=======
# http://trac.openidenabled.com/trac/ticket/156
module OpenID
  @@timeout_threshold = 20

  def self.timeout_threshold
    @@timeout_threshold
  end

  def self.timeout_threshold=(value)
    @@timeout_threshold = value
  end

  class StandardFetcher
    def make_http(uri)
      http = @proxy.new(uri.host, uri.port)
      http.read_timeout = http.open_timeout = OpenID.timeout_threshold
      http
    end
  end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
end