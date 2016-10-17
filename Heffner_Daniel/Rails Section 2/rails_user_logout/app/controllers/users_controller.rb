class UsersController < ApplicationController
	def create
		# @nuser = User.find_by( email: user_params[:email] )
		# if !@nuser.authenticate(user_params[:password])
		# 	flash[:alert] = "Invalid"
		# 	redirect_to sessions_new_path
		# else
		# 	session[:current_user] = User.select(:id, :name, :email).where(id: @nuser.id)[0]
		# 	redirect_to user_path(session[:current_user][:id])
		# end
	end

	def show
		if !session[:current_user]
			redirect_to sessions_new_path
		else
			@user = session[:current_user]
		end
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end

end
