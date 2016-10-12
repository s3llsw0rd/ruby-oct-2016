class UmsController < ApplicationController
    def index
        @users = User.all
        puts @users.first.email_address
    end
end
