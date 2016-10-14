class DojosController < ApplicationController
  def index
    # reset_session
  end
  def create
    # puts dojo_params
    session[:dojo] = dojo_params
    if ! session[:count]
      session[:count] = 0
    else
      session[:count] = session[:count] + 1
    end

    redirect_to '/result'
  end

  def result

    if ! session[:count]
      session[:count] = 0
    end
  end

  private
  def dojo_params
    params.require(:dojo).permit(:name, :location, :language, :comment)
  end
end
