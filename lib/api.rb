require 'sinatra/base'

class Api < Sinatra::Base
  get '/' do
    'Hello Api!'
  end
end
