require 'sinatra/base'

class Battle < Sinatra::Base
  get '/battle' do
    "Hello battle!"
  end

  run! if app_file == $0
end
