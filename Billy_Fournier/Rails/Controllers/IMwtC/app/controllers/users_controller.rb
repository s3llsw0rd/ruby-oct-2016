class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end
  def new
    render 'new'
  end
  def create
    puts params[:name], ' *'
    User.create(name:params[:name])
  end
  def show
    render json: User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
    render 'edit'
  end
  def total
    @total = User.count(:all)
    render 'total'
  end
end
