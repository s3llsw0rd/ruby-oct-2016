class UmsController < ApplicationController
    # layout false
    def index
        @users = User.all
    end

    def new
        session[:new_user] = {} unless session[:new_user]
    end

    def create
        @new_user = User.new(user_params)
        if @new_user.valid?
            @new_user.save
            redirect_to users_path
        else
            flash[:errors] = @new_user.errors.full_messages
            session[:new_user] = params
            redirect_to new_user_path
        end
    end
    def show
        @user = User.find(params[:id])
    end
    def edit
        session[:user] =  User.find(params[:id])
    end
    def update
        session[:user] = User.find(params[:id])
        if  session[:user].update(user_params)
            redirect_to show_user_path(session[:user][:id].to_i)
        else
            flash[:errors] = session[:user].errors.full_messages
            redirect_to edit_user_path(session[:user][:id].to_i)
        end
    end
    def destroy
        User.find(params[:id]).delete
        redirect_to users_path
    end
    private
        def user_params
            params.permit(:first_name, :last_name, :email_address, :password)
        end

end
