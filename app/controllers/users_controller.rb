class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    api_return(user)
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :nickname)
  end
end
