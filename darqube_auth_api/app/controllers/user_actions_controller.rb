class UserActionsController < ApplicationController
  def check_auth
    if user_signed_in?
      render json: {
        data: {
          message: "Welcome #{current_user.name}",
          user: current_user
        }
      }, status: 200
    else
      render json: {
        data: {
          message: "Not authorized"
        }
      }, status: 200
    end
  end
end
