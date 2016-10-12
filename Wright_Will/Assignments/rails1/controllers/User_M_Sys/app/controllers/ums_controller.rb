class UmsController < ApplicationController
    def index
        @users = User.all
    end

    def new
    end

    def create
        @new_user = User.new(user_params)
        if @new_user.valid?
            @new_user.save
            redirect_to '/users'
        else
            flash[:errors] = @new_user.errors.full_messages
            session[:new_user] = params
            redirect_to '/users/new'
        end
    end
    private
        def user_params
            params.permit(:first_name, :last_name, :email_address, :password)
        end

end
