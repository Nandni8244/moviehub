# Fix for Rails 6.1 + Ruby 3.2 compatibility issue
# Logger needs to be fully loaded before ActiveSupport tries to use it
require 'logger' unless defined?(Logger)


