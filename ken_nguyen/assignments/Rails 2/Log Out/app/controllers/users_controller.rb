class UsersController < ApplicationController
  before_action :get_user, only: [:show]

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  private
  def get_user
    @user = User.find(params[:id])
  end
end
