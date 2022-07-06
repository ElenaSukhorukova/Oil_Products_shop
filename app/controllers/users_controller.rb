class UsersController < ApplicationController
 
  def new
    @user = User.new
    @errors = flash[:errors]
  end

  def create
    @user = User.create(user_params)
    flash[:errors] = user.errors.full_messages
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :role)
  end

end
