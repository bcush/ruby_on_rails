class WordsController < ApplicationController
  def index
  end

  def generate
    if session[:count].nil?
      session[:count] = 2
    else
      session[:count] += 1
    end
    redirect_to root_url, flash: { word: [*('a'..'z'),*('0'..'9')].shuffle[0,14].join }
  end
end
