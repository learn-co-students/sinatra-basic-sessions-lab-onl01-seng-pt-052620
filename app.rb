require_relative 'config/environment'
require 'sysrandom/securerandom'

class App < Sinatra::Base

    configure do 
        @secret = SecureRandom.hex(128)
        enable :sessions
        set :session_secret, "#{@secret}"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        @item = params[:item]
        session["item"] = @item
        @session = session
        erb :checkout
    end


end