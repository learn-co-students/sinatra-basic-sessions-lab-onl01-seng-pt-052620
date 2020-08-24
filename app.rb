require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions 
        set :session_secret, "secret"  
    end  

    get "/" do 
        @session = session 
        erb :index 
    end 

    post "/checkout" do 
        session[:item] = params[:item]
        @session = session 
        erb :checkout 
    end 


    # post "/pirates" do 
    #     @pirate = Pirate.new(params[:pirate]) 
    #     params["pirate"]["ships"].each do |ship|
    #      ship = Ship.new(ship)
    #     end 
    #     @ships = Ship.all 
    #     erb :"pirates/show"
    #     end
    #   end 
    # end
  

end