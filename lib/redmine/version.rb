<<<<<<< HEAD
require 'rexml/document'

module Redmine
  module VERSION #:nodoc:
    MAJOR = 2
    MINOR = 4
    TINY  = 3

    # Branch values:
    # * official release: nil
    # * stable branch:    stable
    # * trunk:            devel
    BRANCH = 'stable'

    # Retrieves the revision from the working copy
    def self.revision
      if File.directory?(File.join(Rails.root, '.svn'))
        begin
          path = Redmine::Scm::Adapters::AbstractAdapter.shell_quote(Rails.root.to_s)
          if `svn info --xml #{path}` =~ /revision="(\d+)"/
            return $1.to_i
          end
        rescue
          # Could not find the current revision
        end
      end
      nil
    end

    REVISION = self.revision
    ARRAY    = [MAJOR, MINOR, TINY, BRANCH, REVISION].compact
    STRING   = ARRAY.join('.')

    def self.to_a; ARRAY  end
    def self.to_s; STRING end
  end
end
=======
require 'rexml/document'

module Redmine
  module VERSION #:nodoc:
    MAJOR = 2
    MINOR = 4
    TINY  = 2

    # Branch values:
    # * official release: nil
    # * stable branch:    stable
    # * trunk:            devel
    BRANCH = 'devel'

    # Retrieves the revision from the working copy
    def self.revision
      if File.directory?(File.join(Rails.root, '.svn'))
        begin
          path = Redmine::Scm::Adapters::AbstractAdapter.shell_quote(Rails.root.to_s)
          if `svn info --xml #{path}` =~ /revision="(\d+)"/
            return $1.to_i
          end
        rescue
          # Could not find the current revision
        end
      end
      nil
    end

    REVISION = self.revision
    ARRAY    = [MAJOR, MINOR, TINY, BRANCH, REVISION].compact
    STRING   = ARRAY.join('.')

    def self.to_a; ARRAY  end
    def self.to_s; STRING end
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
