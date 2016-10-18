class UsersController < ApplicationController
	
	before_action :require_login, except: [:new, :create]
	before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@nuser = User.create( user_params )
		if @nuser.errors.any?
			flash[:errors] = @nuser.errors.full_messages
			redirect_to new_user_path
		else
			session[:current_user] = User.select(:id, :name, :email).where(id: @nuser.id)[0]
			redirect_to user_path(session[:current_user][:id])
		end
	end

	def show
		@user = User.find(session[:current_user]['id'])
		@secret = Secret.new
	end

	def edit
		@user = User.find(session[:current_user]['id'])
	end

	def update
		@user = User.find(session[:current_user]['id'])
		if @user.update( update_params )
			session[:current_user] = User.select(:id, :name, :email).find(@user[:id])
			redirect_to user_path(session[:current_user]['id'])
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to edit_user_path
		end
	end

	def destroy
		User.destroy(session[:current_user]['id'])
		session.clear
		redirect_to new_session_path
	end

	private
		def user_params
			params.require(:user).permit(:email, :name, :password, :password_confirmation)
		end

		def update_params
			params.require(:user).permit(:email, :name)
		end

end
