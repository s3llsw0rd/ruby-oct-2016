class SecretsController < ApplicationController
  before_action :show_all_secrets, only: [:index]

  def index
  end

  def create
    @secret = Secret.new(secret_params)
    if @secret.save
      redirect_to user_path(session[:user_id])
    else
      flash[:errors] = @secret.errors.full_messages
      redirect_to user_path(session[:user_id])
    end
  end

  private
  def show_all_secrets
    @secrets = Secret.all
  end

  def secret_params
    params.require(:secrets).permit(:user_id, :content)
  end
end
