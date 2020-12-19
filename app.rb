require 'sinatra/base'

class App < Sinatra::Base

  #responding to a get request at newteam
  get '/newteam' do  
    #rendering it in the GET /newteam route:
    erb :newteam
  end

  post '/team' do
    @name = params[:name] 
    @coach = params[:coach] 
    @pg = params[:pg] 
    @sg = params[:sg] 
    @sf = params[:sf] 
    @pf = params[:pf] 
    @c = params[:c] 
    erb :team
  end
end
