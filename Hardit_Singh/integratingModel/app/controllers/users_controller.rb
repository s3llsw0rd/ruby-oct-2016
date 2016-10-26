class UsersController < ApplicationController

	def users 
		render json: User.all()
	end

	def getUser
		@u = User.find(params[:id])
		# rescue ActiveRecord::RecordNotFound	
		# puts @u
		# if @u
			render json: @u
		# else
			# render text: "User does not exist"
		# end
	end

	def total
		puts '-------------------------------------'
		render text: User.all.count
	end
end
