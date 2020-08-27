require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "85eaf542ce66b110a1c1ee90b71525847d7f761aeda09999438fbc3e72375cf2652ec7f82974429ba2744b7a009f63c53d568d4aef99b5654967cd3f34b98307"
    end

    get '/' do
        erb :index
    end

    get '/hey' do 
        @session = session
        @sesion[:item] = params["item"]
    end

    post '/checkout' do
       @session = session
       item = params["item"]
       @session[:item] = item
    end
    
end