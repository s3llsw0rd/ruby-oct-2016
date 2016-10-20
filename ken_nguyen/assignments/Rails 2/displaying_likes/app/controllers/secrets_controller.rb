class SecretsController < ApplicationController
  before_action :show_all_secrets, only: [:index]
  #before_action :get_secret, only: [:destroy]
  before_action :require_login, only: [:index, :create, :destroy]

  def index
  end

  def create
    @secret = User.find(session[:user_id]).secrets.new(content: secret_params[:content])
    if @secret.save
      redirect_to user_path(session[:user_id])
    else
      flash[:errors] = @secret.errors.full_messages
      redirect_to user_path(session[:user_id])
    end
  end

  def destroy
    secret = Secret.find(params[:id])
    secret.destroy if secret.user == current_user
    redirect_to "/users/#{current_user.id}"
    # if @secret.destroy
    #   redirect_to user_path(session[:user_id])
    # else
    #   flash[:errors] = ["Oops, something went wrong.. dun h#k mi m8"]
    #   redirect_to user_path(session[:user_id])
    # end
  end

  private
  def show_all_secrets
    @secrets = Secret.all
  end

  #def get_secret
  #  @secret = Secret.find(params[:id])
  #end

  def secret_params
    params.require(:secrets).permit(:user_id, :content)
  end
end
