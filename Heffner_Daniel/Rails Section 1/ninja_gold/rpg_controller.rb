class RpgController < ApplicationController
  def index
  	if ! session[:gold]
  		session[:gold] = 0
  		session[:activities] = []
  	end
  	@gold = session[:gold]
  	if session[:activities].length > 10
  		session[:activities] = session[:activities].drop(1)
  	end
  	@activities = session[:activities]
  end

  def handle
	result = MoneyMaker.public_send(params[:location]) if MoneyMaker.respond_to?(params[:location])
	session[:gold] += result[:newgain]
	record = "You earned #{result[:newgain].to_s} golds from working at the #{params[:location]}. --- " + Time.new.strftime("%Y/%m/%d %I:%M %p") unless result[:record]
	session[:activities] << {
		tag: result[:tag] ? result[:tag] : "success", 
		description: result[:record] ? result[:record] : record 
	}
  	redirect_to '/'
  end

  def reset
  	session.clear
  	redirect_to '/'
  end
end
