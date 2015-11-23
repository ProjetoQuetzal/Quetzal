class AssignmentsController < ApplicationController
	before_action do has_permission?(current_user, params[:teamid], params[:controller], params[:action])
  end

	def index
		@assignments = Assignment.all
	end

	def show
		@assignment = Assignment.find(params[:id])
	end

	def new
		@assignment = Assignment.new
	end

	def edit
		@assignment = Assignment.find(params[:id])
	end

	def create
		@assignment = Assignment.new(params[:id])
	end

	def update
		@assignment = Assignment.find(params[:id])

	    if @assignment.update(assignment_params)
	      redirect_to :action => 'show', :id => @assignment.id
	    else
	      render 'edit'
	    end
	  end

	def destroy
		@assignment = Assignment.find(params[:id])
		@assignment.destroy
	end


private

  def assignment_params
      params.require(:assignment).permit()
  end
end
