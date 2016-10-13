class TimesController < ApplicationController
  def index
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    render text: "You visited this url " + session[:counter].to_s + " time"
  end

  def restart
    if session[:counter].nil?
      render text: "No session to destroy!"
    else
      session.clear
      render text: "Destroyed the session!"
    end
  end
end
