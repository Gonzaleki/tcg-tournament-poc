class SessionsController < ApplicationController
  skip_before_action :authenticate_user, except: [:destroy]
  before_action :redirect_if_authenticated, only: [:index]
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

  def destroy
    session.delete(:user_id)
    redirect_to unauthenticated_root_path
  end
end
