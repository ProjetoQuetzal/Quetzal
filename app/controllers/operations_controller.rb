class OperationsController < ApplicationController

	def index
		@operations = Operation.all
	end

	def show
		@operation = Operation.find(params[:id])
	end

	def new
		@operations = Operation.new
		@roles = [Role.find(1), Role.find(2), Role.find(3)]
	end

	def edit
		@operation = Operation.find(params[:id])
		@roles = [Role.find(1), Role.find(2), Role.find(3)]
	end

	def create
		params[:role_titles] ||= []
		@operation = Operation.new(operation_params)

		params[:role_titles].each do |title|
	    	@operation.roles << Role.where(:title => title)
	    end

		if @operation.save
			redirect_to :controller => 'operations', :action => 'index'
		else
			render "new"
		end

	end

	def update
		params[:role_titles] ||= []
	    @operation = Operation.find(params[:id])
	    @operation.roles.delete_all

	    params[:role_titles].each do |title|
	    	@operation.roles << Role.where(:title => title)
	    end

	    if @operation.save
	      redirect_to :action => 'show', :id => @operation.id
	    else
	      render 'edit'
	    end
	  end

	def destroy
		@operation = Operation.find(params[:id])
		@operation.destroy
	end


private

  def operation_params
      params.require(:operation).permit(:name)
  end
end
