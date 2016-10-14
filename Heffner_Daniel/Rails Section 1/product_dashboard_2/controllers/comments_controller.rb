class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def create
  	c_params = comment_params
  	c_params[:product] = Product.find(comment_params[:product])
  	Comment.create( c_params )
  	redirect_to "/products/#{comment_params[:product]}"
  end

  private
  	def comment_params
  		params.require(:comment).permit(:comment, :product)
  	end
end
