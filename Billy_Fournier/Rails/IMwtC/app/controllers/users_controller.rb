class UsersController < ApplicationController
  def index
    @users = User.all
    puts @users, ' *************'
    render text: "Index #{@users.inspect}"
  end
end
