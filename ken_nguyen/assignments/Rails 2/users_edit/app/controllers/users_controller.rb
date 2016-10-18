class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(session[:user_id])
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
  end

  def edit
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(:email, :name, :password, :password_confirmation)
  end
end
