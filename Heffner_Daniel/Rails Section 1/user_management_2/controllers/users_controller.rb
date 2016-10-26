class UsersController < ApplicationController
  
	def index
		@users = User.all
	end

	def new
  		@fake = FakerUser.info
  		@user = User.new
	end

	def create
		@user = User.new( user_params )
		if @user.valid?
			@user.save
			redirect_to users_path
		else
			@user = User.create ( user_params )
			@fake = user_params
			render "new"
		end
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email_address, :password, :password_confirmation)
		end

end
