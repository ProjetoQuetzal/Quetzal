
class SessionsController < ApplicationController

  def start
    redirect_to :controller => 'sessions', :action => 'new'
  end

  def new
    if current_user
      redirect_to :controller => 'teams', :action => 'show', :teamid => '1'
    end

    if Team.all.exists?(1)
    else
      redirect_to :controller => 'users', :action => 'new', :teamid => nil
    end
  
  end

  def create
        user = User.find_by_email(params[:login][:email])
        # If the user exists AND the password entered is correct.
        if user && user.authenticate(params[:login][:password])
              # Save the user id inside the browser cookie. This is how we keep the user
              # logged in when they navigate around our website.
              session[:user_id] = user.id
              redirect_to :controller => 'teams', :action => 'show', :teamid => '1'
        else
            # If user's login doesn't work, send them back to the login form.
              redirect_to '/login'
        end
  end

  def destroy
        session[:user_id] = nil
        redirect_to '/login'
  end

end
