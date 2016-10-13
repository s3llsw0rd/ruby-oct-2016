class MainController < ApplicationController
  def index
  	if !session[:count]
  		session[:count] = 0
  	end
  end

  def create
  	session[:count] = session[:count] +=1
  	session[:result] = params[:user]
  	flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now!"
  	redirect_to '/result'
  end

  def result
  	@success_message = flash[:success]
  	@result = session[:result]
  end
end
