class ProjectsController < ApplicationController
	before_action do has_permission?(current_user, params[:teamid], params[:controller], params[:action])
  end

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def edit
		@project = Project.find(params[:id])
	end

	def create
		@project = Project.new(params[:id])
	end

	def update
		@project = Project.find(params[:id])

	    if @project.update(project_params)
	      redirect_to :action => 'show', :id => @project.id
	    else
	      render 'edit'
	    end
	  end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
	end


private

  def project_params
      params.require(:project).permit(:name, :description)
  end
end

