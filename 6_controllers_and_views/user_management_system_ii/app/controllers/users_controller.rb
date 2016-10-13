class UsersController < ApplicationController
  def index
    @users = User.all
    render "index"
  end

  def new_view
    render "new"
  end

  def new
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Successfully saved!"
      redirect_to '/users'
    else
      flash[:message] = "User not saved."
      redirect_to '/users'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
end
