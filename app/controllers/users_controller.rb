class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]
  before_action :redirect_if_authenticated, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to unauthenticated_root_path, notice: "User successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :league_id)
  end
end
