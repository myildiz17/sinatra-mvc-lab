require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        text_from_user = params[:user_text]
        @final_string = PigLatinizer.new(text_from_user)
        erb :display
        # binding.pry
    end
end