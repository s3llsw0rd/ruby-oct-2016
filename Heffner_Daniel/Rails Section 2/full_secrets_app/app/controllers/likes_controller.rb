class LikesController < ApplicationController

	before_action :require_login

	def create
		l_params = likes_params
		l_params['user'] = User.find(current_user.id)
		l_params['secret'] = Secret.find(likes_params['secret_id'])
		Like.create( l_params ) unless l_params['secret'].users_liked.include? current_user
		redirect_to secrets_path
	end

	def destroy
		Like.destroy(params[:id]) if Like.find(params[:id]).user == current_user
		redirect_to secrets_path
	end

	private
		def likes_params
			params.require(:like).permit(:secret_id)
		end

end