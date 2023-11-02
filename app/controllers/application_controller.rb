class ApplicationController < ActionController::API
  def current_user

    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
end 