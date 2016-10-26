class MainController < ApplicationController
	def index
		session[:gold] = 0 if !session[:gold]
		session[:messages] = [] if !session[:messages]
		render 'index'
	end

	def process_money
		case params[:place]
			when 'farm'
				rand = rand(10..20)
				session[:gold] += rand
				session[:messages].push("Earned #{rand} from #{params[:place]}")
			when 'cave'
				rand = rand(5..10)
				session[:gold] += rand
				session[:messages].push("Earned #{rand} from #{params[:place]}")
			when 'house'
				rand = rand(2..5)
				session[:gold] += rand
				session[:messages].push("Earned #{rand} from #{params[:place]}")
			when 'casino'
				rand = rand(-50..50)
				session[:gold] += rand
				if rand >=0
					session[:messages].push("Earned #{rand} from #{params[:place]}")
				else 
					session[:messages].push("lost #{-rand} at #{params[:place]}")
				end
		end
		redirect_to '/'
	end
end
