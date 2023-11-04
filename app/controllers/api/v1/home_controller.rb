class Api::V1::HomeController < Api::V1::BaseController
  def index
    render json: { message: "Welcome to the app! #{current_user.email}" }
  end
end