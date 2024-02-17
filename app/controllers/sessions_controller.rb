class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:session][:email]) 
      if user && user.authenticate(params[:session][:password])
        @current_user = user
        token = ApiToken.create(active: true, user: user)
        render json: token
      else
        render json: "No user"
      end
  end
    
    def destroy
     session[:user_id] = nil
    end

end