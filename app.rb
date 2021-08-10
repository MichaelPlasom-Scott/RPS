require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play
  end

  post '/player_1_chosen' do
    @player_name = session[:player_name]
    @player_1_choice = params[:player_1_chose]
    erb :outcome
  end

  run! if app_file == $0
end
