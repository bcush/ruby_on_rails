class NumbersController < ApplicationController
  def index
  end

  def guess
    if session[:number].nil?
      session[:number] = rand(1...100)
    end

    if session[:number] > params[:guess].to_i
      flash[:message] = "Too low!"
    elsif session[:number] < params[:guess].to_i
      flash[:message] = "Too high!"
    elsif session[:number] == params[:guess].to_i
      flash[:message] = "You win!"
    end

    redirect_to root_url
  end

  def restart
    session.destroy
    redirect_to root_url
  end
end
