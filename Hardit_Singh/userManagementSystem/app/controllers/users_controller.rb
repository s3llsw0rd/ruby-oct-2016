class UsersController < ApplicationController
	def index 
		@users = User.all()
		puts @users
		render 'index'
	end 

	def new 
		render 'new'
	end

	def create 
		newUser = User.create(user_params)
		redirect_to "/"
	end
	def profile
		@user = User.find(params[:id])
		render 'profile'
	end
	
	def edit
		@user = User.find(params[:id])
		render 'edit'
	end

	def update
		puts '----------------', params, '---------------------'
		user = User.find(params[:id])
		user.update(user_params)
		redirect_to "/"
	end

	def destroy
		User.delete(params[:id])
		redirect_to "/"
	end

	private

  def user_params
		puts "-------------------params"
    params.require(:user).permit(:firstName, :lastName, :email, :password)
  end
end
