class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  
  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "User successfully created!"
  		redirect_to "/"
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to "/users/new"
  	end
  end
  
  def show
  	@user = User.find(params[:id]) 
  end
  
  def update
  	updated_user = User.find(params[:id]).update(user_params)
    redirect_to "/"
  end
  
  def destroy
  	delete_user = User.find(params[:id]).destroy
  	redirect_to "/"
  end
  def edit
    @edit_user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end

end
