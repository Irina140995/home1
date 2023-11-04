class RegistrationsController < ApplicationController
  
  def create
    @registrations = User.new(registration_params)

    if @registrations.save
      render json: @registrations, status: :created, location: @registrations
    else
      render json: @registrations.errors, status: :unprocessable_entity
    end
  end

  private

 def registration_params
   params.require(:registration).permit(:email, :password)
 end
end
