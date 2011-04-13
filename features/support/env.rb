ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/api.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Api

class ApiWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  ApiWorld.new
end
