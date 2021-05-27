class MovieController < ApplicationController

    get "/movies" do 
        @movies = Movie.all #ALL of our movies
        erb :'movies/index'
    end

    get "/movies/new" do 
        redirect_if_not_logged_in 
        @genres = Genre.all
        erb :'movies/new'
        #form for creating movies
    end

    get "/movies/:id" do 
        @movie = Movie.find(params[:id])
        erb :'movies/show'
        #seeing one individual movie
    end

  
    get "/movies/:id/edit" do 
        redirect_if_not_logged_in 
        
        @movie = Movie.find(params[:id])
        redirect_if_not_authorized
        erb :'movies/edit'
        #editing a specific movie
    end

    post "/movies" do 
        redirect_if_not_logged_in 
        #  @movies = current_user.movies.build(params)
        @movie = Movie.new(params)
        #  binding.pry
        #  @movie.user_id = current_user.id
        @movie.user_id = session[:user_id]
        @movie.save
        binding.pry
        redirect :'/movies'
        #create new movies
    end

    patch "/movies/:id" do 
        redirect_if_not_logged_in 
         
       @movie = Movie.find(params[:id])
       redirect_if_not_authorized
       @movie.update(params["movie"])
        redirect :"movies/#{@movie.id}"
        #editing a spefic movie
    end

    delete "/movies/:id" do 
        redirect_if_not_logged_in 
        @movie = Movie.find(params[:id])
        redirect_if_not_authorized
        @movie.destroy
        # binding.pry
        redirect :"/movies"
        #deleting one spefic movie
    end


private 
def redirect_if_not_authorized 
    if @movie.user != current_user 
        redirect '/movies'
     end
end




end