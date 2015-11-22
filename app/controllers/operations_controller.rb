class OperationsController < ApplicationController

	def index
		@operations = Operation.all
	end

	def show
		@operation = Operation.find(params[:id])
	end

	def new
		@operations = Operation.new
	end

	def edit
		@operation = Operation.find(params[:id])
	end

	def create
		@operation = Operation.new(params[:id])
	end

	def update
		@operation = Operation.find(params[:id])

	    if @operation.update(operations_params)
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
      params.require(:operation).permit()
  end
end
