class ApplicationController < ActionController::Base
	def current_user
	   User.find(session[:current_user]['id']) if session[:current_user]
	end
  helper_method :current_user

  def require_login
  	redirect_to new_session_path if session[:current_user] == nil
  end
  helper_method :require_login

  def require_correct_user
    user = User.find(params[:id])
    redirect_to "/users/#{current_user.id}" if current_user != user
  end
  helper_method :require_correct_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
