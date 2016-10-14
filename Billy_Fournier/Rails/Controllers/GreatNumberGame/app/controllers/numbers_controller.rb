class NumbersController < ApplicationController
  def index


  end
  def guess
    puts '','params: ',params[:guess]
    session[:guess] = rand(100) if ! session[:guess]
    puts 'sessions: ',session[:guess], ''
    if session[:guess] == Integer(params[:guess])
      flash[:guess] = {error: false, msg: "#{params[:guess]} was the number!"}
    elsif Integer(params[:guess]) < session[:guess]
      flash[:guess] = {error: true, msg: 'Too low'}
    else
      flash[:guess] = {error: true, msg: 'Too high'}
    end

    redirect_to '/'
  end

  def replay
    session[:guess] = nil
    redirect_to '/'
  end
end
