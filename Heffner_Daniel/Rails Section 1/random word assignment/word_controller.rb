class WordController < ApplicationController
  def random
  	if !session[:attempts]
  		session[:attempts] = 0
  	end
  	@str = ""
  	options = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  	(1..14).each { rand(0..1) == 1 ? @str += options[rand(1...options.length)] : @str += rand(0..9).to_s }
  	session[:attempts] += 1
  	@attempts = session[:attempts]
  end
end
