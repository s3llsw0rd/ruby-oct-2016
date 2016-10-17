class SessionsController < ApplicationController

	def new
		@session = User.new
	end

	def create
		@session = User.find_by( email: user_params[:email] )
		if !@session.authenticate(user_params[:password])
			flash[:alert] = "Invalid"
			redirect_to new_session_path
		else
			session[:current_user] = User.select(:id, :name, :email).where(id: @session.id)[0]
			redirect_to user_path(session[:current_user][:id])
		end
	end

	def destroy
		session.clear
		redirect_to new_session_path
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end

end
