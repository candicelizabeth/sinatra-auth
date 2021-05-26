class UserController < ApplicationController 

    get '/signup' do 
        erb :'users/signup'
    end

    post '/signup' do 
        # binding.pry 
        u = User.new(params)
        # u = User.new(email: params[:email], password: params[:password])
        #1. instanciate a user 
        #2. make sure user signed up with valid data
        # if !params.all?{|key, value| value.blank?} || User.find_by(email: params[:email])
        # if u.email.blank? || u.password.blank? || User.find_by_email(params["email"])
        if !u.save
            redirect to '/signup'
        else 
            
            u.save
            # binding.pry
            session[:user_id] = u.id
            # binding.pry
            redirect to '/movies'
        
        end
        #3. if they sign up successfully we want to redirect somewhere
        #4. if they DON'T sign up successfully we want to redirect back to the form
    end

    post '/logout' do 
        session.clear
        redirect to '/movies'
    end
end