<<<<<<< HEAD
begin
  require "rubygems"
  require "bundler"
rescue LoadError
  $stderr.puts "Redmine requires Bundler. Please install it with `gem install bundler`."
  exit 1
end

if Gem::Version.new(Bundler::VERSION) < Gem::Version.new("1.0.21")
  $stderr.puts "Redmine requires Bundler 1.0.21 (you're using #{Bundler::VERSION}).\nPlease install a newer version with `gem install bundler`."
  exit 1
end

begin
  ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)
  Bundler.setup
rescue Bundler::GemNotFound
  $stderr.puts "Some gems may need to be installed or updated.\nPlease run `bundle install --without development test`."
  exit 1
end
=======
begin
  require "rubygems"
  require "bundler"
rescue LoadError
  $stderr.puts "Redmine requires Bundler. Please install it with `gem install bundler`."
  exit 1
end

if Gem::Version.new(Bundler::VERSION) < Gem::Version.new("1.0.21")
  $stderr.puts "Redmine requires Bundler 1.0.21 (you're using #{Bundler::VERSION}).\nPlease install a newer version with `gem install bundler`."
  exit 1
end

begin
  ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)
  Bundler.setup
rescue Bundler::GemNotFound
  $stderr.puts "Some gems may need to be installed or updated.\nPlease run `bundle install --without development test`."
  exit 1
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
