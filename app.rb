require 'sinatra/base'

class Battle < Sinatra::Base
  get '/battle' do
    "Hello battle!"
  end

  get '/' do
    "Testing infrastructure working!"
  end

  get '/names' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end

  run! if app_file == $0
end
