class MeController < Api::V1::BaseController

before_action :authenticate
    def show
    
     render json: @current_user
    end

end