require_relative 'config/environment'

class App < Sinatra::Base
    get '/'  do
        #code
        erb :index
    end

    get '/new' do
        #code

        erb :create_puppy
    end

    post '/puppy' do
        name = params[:name]
        breed = params[:breed]
        age = params[:age]
        @puppy = Puppy.new(name, breed, age)
        
        #load view
        erb :display_puppy
    end
    
end
