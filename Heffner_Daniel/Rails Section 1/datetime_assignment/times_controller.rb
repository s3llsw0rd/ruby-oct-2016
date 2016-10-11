class TimesController < ApplicationController
  def main
  	@date = Time.new.strftime("%b %d, %Y")
  	@time = Time.new.strftime("%I:%M %p")
  	render "main"
  end
end
