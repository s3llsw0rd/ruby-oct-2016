class CommentsController < ApplicationController

	def index
		@comments = Comment.all() 
	end 
	
	def create
		product = Product.find(params[:comment][:product])
		myParams = comment_params
		myParams[:product] = product
		Comment.create(myParams)
		redirect_to product_path(params[:comment][:product])
	end

	private

	def comment_params
    params.require(:comment).permit(:text)
  end
end
