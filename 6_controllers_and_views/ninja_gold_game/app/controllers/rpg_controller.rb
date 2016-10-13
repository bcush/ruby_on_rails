class RpgController < ApplicationController
  def index
    if session[:gold].nil?
      session[:gold] = 0
    end

    if session[:activities].nil?
      session[:activities] = []
    end
  end

  def money
  end

  def farm
    @change = rand(10...20)
    session[:gold] += @change
    session[:activities].insert(0, "Farm gave you #{@change}!")
    redirect_to root_url
  end

  def cave
    @change = rand(5...10)
    session[:gold] += @change
    session[:activities].insert(0, "Cave gave you #{@change}!")
    redirect_to root_url
  end

  def house
    @change = rand(2...5)
    session[:gold] += @change
    session[:activities].insert(0, "House gave you #{@change}!")
    redirect_to root_url
  end

  def casino
    @change = rand(-50...50)
    session[:gold] += @change
    session[:activities].insert(0, "Casino gave you #{@change}!")
    redirect_to root_url
  end

  def restart
    session.destroy
    redirect_to root_url
  end
end

