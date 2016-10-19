class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]

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

  def update
    if @user.update(user_params)
      redirect_to user_path(session[:user_id])
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(session[:user_id])
    end
  end

  def destroy
    if @user.destroy
      reset_session
      redirect_to new_session_path
    else
      flash[:errors] = ["Uh-oh, something went wrong.. dun hak m3 br8"]
      redirect_to edit_user_path(session[:user_id])
    end
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:users).permit(:email, :name, :password, :password_confirmation)
  end
end
