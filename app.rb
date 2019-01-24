require 'sinatra/base'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:date] = params[:date]
    session[:month] = params[:month]
    
    redirect '/greet'
  end

  get '/greet' do
    @name = session[:name]
    @date = session[:date]
    @month = session[:month]
    @time = Time.new
    @month = @time.month
    @day = @time.day
    erb :greet
  end

  run! if app_file == $0
end