class RolesController < ApplicationController
  before_action do has_permission?(current_user, params[:teamid], params[:controller], params[:action])
  end

  def index
    @roles = Role.all
  end

  def show
  	@role = Role.find(params[:roleid].to_i*params[:teamid].to_i)
  end

  def new
    @roles = Role.new
  end

   def edit
    @role = Role.find(params[:roleid].to_i*params[:teamid].to_i)
    @users = User.all
  end

  def update
  	params[:user_ids] ||= []
    @role = Role.find(params[:roleid].to_i*params[:teamid].to_i)
    @role.users.delete_all

    params[:user_ids].each do |u|
    	@role.users << User.find(u)
    end

    if @role.save
      redirect_to :action => 'show', :roleid => @role.id
    else
      render 'edit'
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
  end

  private

  def role_params
        params.require(:role).permit(:title)
  end

end


