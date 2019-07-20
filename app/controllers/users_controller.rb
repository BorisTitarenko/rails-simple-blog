class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user[:id]
      session[:first_name] = @user[:first_name]
      redirect_to home_path
    else
      redirect_to "/signup"
    end
  end

  private
  def user_params
    user = params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end
end
