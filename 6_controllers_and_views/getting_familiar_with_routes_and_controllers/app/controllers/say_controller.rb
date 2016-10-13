class SayController < ApplicationController
  def index
    # render text: "Saying " + params[:word].titleize + "!"
    render text: "What do you want me to say???"
  end

  def index2
    if params[:word] == "hello" && params[:word2] == "michael"
      redirect_to "/say/hello/joe"
    else
      render text: "Saying " + params[:word].titleize + " " + params[:word2].titleize + "!"
    end
  end
end
