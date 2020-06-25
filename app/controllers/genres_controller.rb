class GenresController < ApplicationController 
    
    set :views, "app/views/genres"

    get '/genres' do 
        @genres = Genre.all 
        erb :index 
    end 

    get '/genres/:slug' do 
        @genres = Genre.find_by_slug(params[:slug])
        @artists = @genres.artists 
        @songs = @genres.songs 
        erb :show 
    end 

end 