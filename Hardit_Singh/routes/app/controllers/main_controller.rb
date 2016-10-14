class MainController < ApplicationController
	def index
		render text: 'What do you want me to say???'
	end
	def hello
		render text: 'Hello CodingDojo!'
	end

	def sayHello
		render text: 'Saying Hello'
	end

	def sayHelloName
		puts "here "
		if params[:name] == 'michael' 
			redirect_to '/say/hello/joe' 
		else	
			render text: 'Saying Hello '+ params[:name] 
		end
	end

	def times 
		if session.key?('count')
			session[:count]+=1
			render text: "You have visited this page #{session[:count]} times"
		else 
			session[:count]=1
			render text: "You have visited this page #{session[:count]} times"
		end
	end
	def restart
		session[:count]=0
		render text: 'Destroyed the session'
	end
end
