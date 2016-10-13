class UsersController < ApplicationController
  def index
    @users = User.all
    render "index"
  end

  def create_form
    render "create"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "User successfully saved."
    else
      flash[:message] = "User not saved."
    end
      redirect_to "/users"
  end

  def read
    @user = User.find(params[:id])
    render "read"
  end

  def update_form
    @user = User.find(params[:id])
    render "update"
  end

  def update
    user = User.find(params[:id])
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email_address = params[:email_address]
    user.password = params[:password]
    if (user.save)
      redirect_to '/users'
    else
      flash[:message] = user.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/users'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
end
