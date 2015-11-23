class UsersController < ApplicationController

  def new
    @user = User.new
    @user_description = @user.build_user_description
  end

  def create
    @user = User.new(user_params)
    @user_description = @user.create_user_description(user_description_params)
    if @user.save
      #UserMailer.registration_confirmation(@user).deliver
      session[:user_id] = @user.id
      @user.permit

      if Team.all.exists?(1)
        @user.roles << Team.find(1).roles.find(2)
        redirect_to '/'
      else
        redirect_to :controller => 'teams', :action => 'new', :teamid => nil
      end
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

    if @user.update(user_params)
      redirect_to :action => 'show', :id => @user.id
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user_description_params
    params.require(:user_description).permit(:name, :last_name)
  end
end
