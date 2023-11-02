class RegistrationsController < ApplicationController
  
  def create
    @registrations = User.new(registration_params)

    if @registrations.save
      render json: @registration, status: :created, location: @registration
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end

  private

 def registration_params
   params.require(:registrations).permit(:email, :password)
 end
end
