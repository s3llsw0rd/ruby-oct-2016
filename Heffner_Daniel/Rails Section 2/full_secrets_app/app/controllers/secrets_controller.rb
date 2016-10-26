class SecretsController < ApplicationController

	before_action :require_login, only: [:index, :create, :destroy]

	def index
		@secrets = Secret.all
		@like = Like.new
	end

	def create
		s_params = secret_params
		s_params[:user] = User.find(session[:current_user]['id'])
		@secret = Secret.new( s_params )
		if @secret.save
			redirect_to user_path(session[:current_user]['id'])
		else
			flash[:errors] = @secret.errors.full_messages
			redirect_to user_path(session[:current_user]['id'])
		end
	end

	def destroy
		secret = Secret.find(params[:id])
		Secret.destroy(params[:id]) if secret.user == current_user
		redirect_to user_path(session[:current_user]['id'])
	end

	private
		def secret_params
			params.require(:secret).permit(:content, :user)
		end

end
