class TeamsController < ApplicationController
  before_action :require_user
  before_action do has_permission?(:teamid)
  end

  def new
      @team = Team.new
  end

  def create
      @user = current_user
      @team = Team.new(team_params)
      @role_adm = RoleAdministrator.new(title: "admin")
      @role_mb = RoleMember.new(title: "member")
      @role_obs = RoleObserver.new(title: "observer")
      @team.roles << @role_adm
      @team.roles << @role_mb
      @team.roles << @role_obs
      if @team.save
          @user.roles << @role_adm
          redirect_to '/index'
      else
          render "new"
      end
  end

  def show
      @team = Team.find(params[:teamid])
      @ctrl = params[:controller]
      @act = params[:action]
  end

  def edit
    @team = Team.find(params[:teamid])
  end

  def update
    @team = Team.find(params[:teamid])

    if @team.update(team_params)
      redirect_to :action => 'show', :teamid => @team.id
    else
      render 'edit'
    end
  end

  def manage_roles
    @team = Team.find(params[:teamid])
    @role_mb = @team.roles.find_by_title("member")
    @users = User.all
  end

  def members_update (user)
    @team = Team.find(params[:teamid])
    @role_mb = @team.roles.find(2)
    @role_mb << user
  end

private

    def team_params
        params.require(:team).permit(:name)
    end

end
