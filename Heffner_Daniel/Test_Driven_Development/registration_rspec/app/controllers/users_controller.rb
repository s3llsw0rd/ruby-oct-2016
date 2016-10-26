class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new( user_params )
		if @user.save
			flash[:alert] = ["Successful Registration"]
			redirect_to user_path(@user.id)
		else
			flash[:alert] = @user.errors.full_messages
			redirect_to root_path
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		end

end