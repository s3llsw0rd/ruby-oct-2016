class TimesController < ApplicationController
  def main
  		@time1 = Time.new.strftime('%b %d, %Y %H:%M %p')
  end
end
