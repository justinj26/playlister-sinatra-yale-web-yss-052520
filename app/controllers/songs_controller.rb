class SongsController < ApplicationController 

    set :views, "app/views/songs"

    get '/songs' do
        @songs = Song.all  
        erb :index 
    end 

    get '/songs/new' do 
        erb :new
    end 

    post '/songs' do 
        song = Song.find_by_slug(params)
        redirect '/songs'
    end 

    get '/songs/:slug' do 
        @song = Song.find_by_slug(params[:slug])
        erb :show
    end 

    get '/songs/:slug/edit' do 
        @song = Song.find_by_slug(params[:slug])
        erb :edit 
    end 

    patch '/songs' do 
        song = Song.find_by_slug(params)
        # song.update(params[)
        redirect "/songs/#{song.slug}"
    end 





end 