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

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		params = user_params
		# params.reject!{ |key, value| value.blank?}
		if @user.update_attributes( params )
			redirect_to "/users/#{params[:id]}"
		else
			render "edit"
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		if User.find(params[:id]).destroy
			redirect_to "/users"
		else
			render json: User.find(params[:id].destroy).errors
		end
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email_address, :password, :password_confirmation)
		end

end
