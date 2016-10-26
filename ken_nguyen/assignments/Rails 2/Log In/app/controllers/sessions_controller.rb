class SessionsController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user.authenticate(user_params[:password])
      session[:id] = @user.id
      redirect_to user_path(session[:id])
    else
      flash[:errors] = 'Invalid email or password'
      render 'sessions/new'
    end
  end

  private
  def user_params
    params.require(:sessions).permit(:email, :password)
  end
end
