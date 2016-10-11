class TimesController < ApplicationController
	def index
		if !session[:count]
			session[:count] = 1
		else
			session[:count] += 1
		end
		render text: "You visited this URL #{session[:count].to_s} times."
	end

	def reset
		session.clear
		render text: "Destroyed the session"
	end
end
