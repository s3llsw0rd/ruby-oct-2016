class WordController < ApplicationController
  def index
  	if !session[:count]
  		session[:count] = 0
  	end
  end

  def create
  	session[:random] = Array.new(14).map{|i| i=rand(65..90).chr}.join
  	session[:count] = session[:count] + 1
  	redirect_to action:'index'
  end
end
