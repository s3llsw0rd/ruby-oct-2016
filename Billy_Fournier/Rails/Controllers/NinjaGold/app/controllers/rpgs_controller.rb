class RpgsController < ApplicationController
  def index
    session[:gold] = 0 unless session[:gold]
    session[:activity] = [] unless session[:activity]
  end

  def find
    case params[:act]
    when 'farm'
      gold = rand(10..20)
    when 'cave'
      gold = rand(5..10)
    when 'house'
      gold = rand(2..5)
    when 'casino'
      gold = rand(-50..50)
    else
      gold = 0
    end

    session[:gold] += gold
    if gold > 0
      session[:activity].push({result: 'green', msg: "Earned #{gold} golds from the #{params[:act]}. #{Time.now}"})
    else
      session[:activity].push({result: 'red', msg: "Entered a casino and lost #{gold} golds... Ouch.. #{Time.now}"})
    end

    redirect_to '/rpgs'
  end
end
