class SessionsController < ApplicationController
  
    def create
      user = User.find_by(email: params[:session][:email]) 

        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id

          render json user
        else
         render json: user.errors
      end
    end
    
    def destroy
     session[:user_id] = nil
    end

end
 
 
