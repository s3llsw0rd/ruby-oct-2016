class TimesController < ApplicationController
	def index
		@date = Time.new.strftime('%b %d, %Y')
		@time = Time.new.strftime('%I:%M %p')
		render 'times'
	end
end
