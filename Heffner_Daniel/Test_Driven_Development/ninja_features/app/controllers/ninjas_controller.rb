class NinjasController < ApplicationController

	def new
		@ninja = Ninja.new
	end

	def create
		@ninja = Ninja.new( ninja_params )
		if @ninja.save
			redirect_to success_path
		else
			flash[:errors] = { 'message': "Sorry, failed to submit form. Please enter the required information." }
			if @ninja.errors.messages[:name]
				flash[:errors]['name'] = "Name is required."
			end
			if @ninja.errors.messages[:description]
				flash[:errors]['description'] = "Description is required."
			end
			redirect_to root_path
		end
	end

	def show
	end

	private
		def ninja_params
			params.require(:ninja).permit(:name, :description)
		end

end