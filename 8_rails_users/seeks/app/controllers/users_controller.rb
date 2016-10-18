class UsersController < ApplicationController

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = User.find_by(email: params[:email]).id
      redirect_to "/users/#{@user.id}"
    else
      flash[:message] = "Invalid"
      redirect_to "/sessions/new"
    end
  end

  def show
    @user = User.find(session[:user_id])
  end
end
