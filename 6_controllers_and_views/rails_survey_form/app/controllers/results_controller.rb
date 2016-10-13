class ResultsController < ApplicationController
  def result
    if session[:count].nil?
      session[:count] = 1
    else
      session[:count] = session[:count] += 1
    end
    flash[:notice] = "Thanks for submitting this form! You have submitted this form " + session[:count].to_s + " times now."
    render "result"
  end
end
