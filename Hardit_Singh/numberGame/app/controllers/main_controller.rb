class MainController < ApplicationController
	def index
		render 'index'
	end

	def guess
		session[:randNum] = Random.new.rand(1..100) unless session[:randNum]
		if params[:guess].to_i == session[:randNum]
			flash[:message] = "the number is"
		elsif params[:guess].to_i > session[:randNum]
				flash[:message] = "Too high"
		else 
				flash[:message]= "Too low"
		end
		redirect_to '/'
	end 

	def reset 
		session.delete(:randNum)
		redirect_to '/'
	end
end
