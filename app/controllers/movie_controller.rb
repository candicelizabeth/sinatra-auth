class MovieController < ApplicationController

    get "/movies" do 
        @movies = Movie.all #ALL of our movies
        erb :'movies/index'
    end

    get "/movies/new" do 
        erb :'movies/new'
        #form for creating movies
    end

    get "/movies/:id" do 
        @movie = Movie.find(params[:id])
        erb :'movies/show'
        #seeing one individual movie
    end

  
    get "/movies/:id/edit" do 
        
        @movie = Movie.find(params[:id])
        erb :'movies/edit'
        #editing a specific movie
    end

    post "/movies" do 
        @movie = Movie.new(params)
        #  binding.pry
        @movie.save
        
        redirect :'/movies'
        #create new movies
    end

    patch "/movies/:id" do 
       @movie = Movie.find(params[:id])
       @movie.update(params["movie"])
        redirect :"movies/#{@movie.id}"
        #editing a spefic movie
    end

    delete "/movies/:id" do 
        @movie = Movie.find(params[:id])
        @movie.destroy
        # binding.pry
        redirect :"/movies"
        #deleting one spefic movie
    end







end