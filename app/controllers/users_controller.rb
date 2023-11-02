class UsersController < ApplicationController
    before_action :set_user, only: %i[ show update destroy ]

    def new
      @user = User.new

      render json: @user
    end

    def index
      @user = User.all
  
      render json: @user           #current_user
    end
  
    def show
      render json: @users do serializer UserSerializer end
    end
  
    def create
      @users = User.new(user_params)
  
      if @users.save
        
        render json: @users, status: :created, location: @users
      else
        render json: @users.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @users.update(user_params)
        render json: @users
      else
        render json: @users.errors, status: :unprocessable_entity
      end
    end
  
   def destroy
      @users.destroy
   end
  
    private

   def set_user
    @users = User.find(params[:id])
   end

   def user_params
     params.require(:user).permit(:id, :email, :name, :password_digest)
   end
end