class HomeController < BaseController
  
  def index
    render json: { message: "Welcome to the app!" }
  end
end
