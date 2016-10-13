class WordsController < ApplicationController
  def index
    session[:num] = 0 if ! session[:num]
    session[:count] = 0 if ! session[:count]
  end
  def generate
    # session[:count] = session[:count] + 1
    session[:num] = rand(36**14).to_s(36)
    @num = rand(36**14).to_s(36)

    redirect_to action: 'index', num: @num
    # redirect_to '/', num: 2

    # render 'index'
  end
end
