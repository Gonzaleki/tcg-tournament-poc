class SessionsController < ApplicationController
  def index
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to authenticated_root_path
    else
      render json: { errors: [ "Invalid email or password" ] }, status: :unauthorized
    end
  end
end
