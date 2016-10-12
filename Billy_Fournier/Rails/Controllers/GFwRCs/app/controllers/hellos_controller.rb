class HellosController < ApplicationController
  def index
    render text: 'What do you want me to say???'
  end
  def hello
    render text: 'Hello CodingDojo'
  end
  def say
    render text: 'Saying hello!'
  end
  def sayjoe
    render text: "Saying hello Joe!"
  end
  def saymichael
    redirect_to '/say/hello/joe/'
  end
  def times
    session[:times] = 0 unless session[:times]
    @times = session[:times] + 1
    session[:times] = @times
    render text: "You visited this url #{@times} time"
  end
  def restart
    session[:times] = nil
    render text: "Destroyed the session!"
  end

end
