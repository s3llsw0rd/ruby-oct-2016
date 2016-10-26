class MainController < ApplicationController
	def index
		render 'index'
	end

	def generate
			if session.key?('count')
				session[:count]+=1
			else
				session[:count]=1
			end 
			session[:random_string] = SecureRandom.hex(14)
			
			redirect_to '/'
	end

end
