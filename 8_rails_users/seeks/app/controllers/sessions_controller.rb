class SessionsController < ApplicationController
  def new
  end

  def delete
    session.destroy
    redirect_to '/sessions/new'
  end

end
