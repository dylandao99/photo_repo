class UsersController < ApplicationController
  skip_before_action :authorized
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username,:password))

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end
end
