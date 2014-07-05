class DemoController < ApplicationController
  def members_only
    if @user
      render json: {
        data: {
          message: "Welcome #{@user.email}",
          user: @user
        }
      }, status: 200
    else
      render json: {
        errors: ["Authorized users only."]
      }, status: 401
    end
  end
end
