class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
      redirect_to '/login' unless current_user
  end

  # def require_admin team
  #   redirect_to '/' unless current_user.member.admin?
  # end

  def has_permission?(teamid)
    redirect_to '/' unless Team.find(params[:teamid]).has_permission?(params[:teamid], current_user.id)
  end
  

end
