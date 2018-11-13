class SessionsController < ApplicationController

    #skip_before_action :verify_user_is_authenticated, only: [:new,:create]

    def new
        @user = User.new
        @users = User.all
    end
       
    def create
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          
        else
            flash[:danger] = "invalid name/password combination"
          redirect_to signin_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end

end
