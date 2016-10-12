class GamesController < ApplicationController
  def loop
  	if !session[:secretNumber]
  		session[:secretNumber] = rand(1..100)
  	end
  end
  def guess
  	if params[:newGuess].to_i == session[:secretNumber]
  		flash[:right] = true
  		flash[:message] = "#{params[:newGuess]} was the number!"
  		redirect_to '/'
  	elsif params[:newGuess].to_i < session[:secretNumber]
  		flash[:wrong] = true
  		flash[:guess] = params[:newGuess]
  		flash[:message] = "Too Low!"
  		redirect_to '/'
  	elsif params[:newGuess].to_i > session[:secretNumber]
  		flash[:wrong] = true
  		flash[:guess] = params[:newGuess]
  		flash[:message] = "Too High!"
  		redirect_to '/'
	end
  end
  def reset
  	session.clear
  	redirect_to '/'
  end
end
