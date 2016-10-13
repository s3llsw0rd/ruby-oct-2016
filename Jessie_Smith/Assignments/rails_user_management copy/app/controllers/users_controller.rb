class UsersController < ApplicationController
  def index
  	@users = User.all
  end
  
  def create
  	  new_user = User.new(user_params)
	  	  if new_user.save
	  	  	flash[:success] = "You did it!"
	  	  	redirect_to '/'
	  	  else
	  	  	flash[:error] = new_user.errors.full_messages
	  	  	redirect_to '/users/new'
	  	  end
  end
  
  def update
  	update_user = User.find(params[:id]).update(user_params)
  	redirect_to "/"
  end

  def destroy
  	delete_user = User.find(params[:id]).destroy
  	redirect_to '/'
  end

  # def result
  # 	@result = session[:result]
  # end
  def edit
  	@edit_user = User.find(params[:id])
  end
  
  def show
  	@user = User.find(params[:id])
  end
  	


  private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
  	end
end
