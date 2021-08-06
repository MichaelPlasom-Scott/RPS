require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/end_screen_win' do
    'Michael Wins!'
  end

  run! if app_file == $0
end
