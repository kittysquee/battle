require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect to('/play'), 303
  end

  get '/play' do
    @game = Game.instance
    if @game.player_1.hit_points <= 0 || @game.player_2.hit_points <= 0
      erb(:game_over)
    else
      erb(:play)
    end
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.opponent_of(@game.current_turn)) # pass who is attacking who
    erb(:attack)
  end

  post '/switch-turns' do
    @game = Game.instance
    @game.switch_turn
    redirect to('play'), 303
  end

  run! if app_file == $0
end
