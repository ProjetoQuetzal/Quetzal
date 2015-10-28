class UsersController < ApplicationController

    def new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            @user_description = UserDescription.new(user_dcp_params)
            @user_description.save
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update (user_params)
            redirect_to :action => 'show', :id => @user.id
        else
            render 'edit'
        end
    end

private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def user_dcp_params
        params.require(:user_description).permit(:last_name, :date_of_birth, :registration, :phone_number, :address)
    end
end
