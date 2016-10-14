class UsersController < ApplicationController

	def index 
		@users = User.all()
	end

	def createUser
		if session.key?('count')
			session[:count]+=1
		else
			session[:count]=1
		end 
		newUser = User.create(user_params)
		
		if newUser
			flash[:error] = "Thanks for submitting this form. You have submitted this form #{session[:count]} times"
			session[:user] = newUser 
			redirect_to '/result'
		else 
			flash[:error] = "Wrong information" 
		end
	end

	
private

  def user_params
    params.require(:user).permit(:name, :location, :language, :comment)
  end
end

