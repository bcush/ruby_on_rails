class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def create
    @userfirst = ['Bob', 'Jack', 'Tom', 'Jill', 'Tito']
    @userlast = ['Smith', 'Johnson', 'James', 'Jackson', 'Perez']
    @newuser = User.create(first_name: @userfirst.sample, last_name: @userlast.sample)
    render text: @newuser
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def total
    render text: User.all.count
  end
end
