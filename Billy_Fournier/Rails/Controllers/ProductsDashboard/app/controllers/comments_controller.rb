class CommentsController < ApplicationController
  def create
    puts '**8***********************8**','',comment_params, '','**8***********************8**'

    Comment.create(comment_params)

    redirect_to "/products/#{params[:id]}"
  end
  private
  def comment_params
    params[:comment][:product_id] = params['id']

    puts '^^^^^^^^^^^^^^^^^^^^','',params, '','^^^^^^^^^^^^^^^^^^^^'
    params.require(:comment).permit(:c_text, :product_id)
    # params.require(:comment).permit(:product, 10)
  end
end
