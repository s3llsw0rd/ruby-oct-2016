class MainController < ApplicationController
  def hello
    render :text => "Hello Coding Dojo"
  end


  def sayinghello
    render :text => "Saying Hello"
  end


  def sayinghijoe
    render :text => "Saying Hello Joe"
  end


  def sayinghimike
    redirect_to "/say/hello/joe"
  end

  def index
    render :text => "What do you want from me?????"
  end

  def times

    if ! session[:count]
      session[:count]=1
    else
      session[:count]+=1
    end
    render :text => "You have visited this page #{session[:count].to_s} times"
  end

  def reset
    session.clear
    render :text => "Destroyed"
  end

end
