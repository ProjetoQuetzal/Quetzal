class TeamsController < ApplicationController
  before_action :require_user

  def new
      @team = Team.new
  end

  def create
      @user = current_user
      @team = Team.new(team_params)
      @role_adm = RoleAdministrator.new(title: "admin")
      @team.roles << @role_adm
      if @team.save
          @user.roles << @role_adm
          redirect_to '/index'
      else
          render "new"
      end
  end

  def show
      @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to :action => 'show', :id => @team.id
    else
      render 'edit'
    end
  end

private

    def team_params
        params.require(:team).permit(:name)
    end

end
