ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack/test'
require 'rspec'
require_relative '../lib/api.rb'

module RSpecMixinExample
  include Rack::Test::Methods
  def app() Api end
end

::RSpec.configure { |c| c.include RSpecMixinExample }