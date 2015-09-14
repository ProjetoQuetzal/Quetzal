class TeamsController < ApplicationController
    def new
        @team = Team.new
    end

    def create
        @user = current_user
        @team = Team.new(team_params)
        if @team.save
            @member = Member.new(name:current_user.name)
            @member.save
            @user.members << @member
            @team.members << @member
            redirect_to '/index'
        else
            render "new"
        end
    end

    def show
        @team = Team.find(params[:id])
    end

private

    def team_params
        params.require(:team).permit(:name)
    end

end
