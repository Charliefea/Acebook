class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:current_user_id] = @user.id
    @user.id ? redirect_to(users_url)  : redirect_to("/users/new")
  end

  def index
    @user = User.find_by_id(session[:current_user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
