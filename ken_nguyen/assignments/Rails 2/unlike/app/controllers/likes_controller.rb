class LikesController < ApplicationController
  def create
    Like.create(user: User.find(session[:user_id]), secret: Secret.find(params[:secret_id]))
    redirect_to "/secrets"
  end

  def destroy
    like = Like.where(user: User.find(session[:user_id]), secret: Secret.find(params[:secret_id]))
    if like.any?
      like[0].destroy
    end
    redirect_to "/secrets"
  end
end
