class TimesController < ApplicationController
  def main
  	@time1 = Time.new.strftime("%b %d, %Y %I:%M %p")
  		
  end
end
