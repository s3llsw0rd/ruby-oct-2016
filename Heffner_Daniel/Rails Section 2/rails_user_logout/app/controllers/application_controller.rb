class ApplicationController < ActionController::Base
	def current_user
	   User.find(session[:current_user]['id']) if session[:current_user]
	end
  helper_method :current_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
