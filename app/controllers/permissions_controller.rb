class PermissionsController < ApplicationController

	def index
		@permissions = Permission.all
	end

	def show
		@permission = Permission.find(params[:id])
	end

	def new
		@permissions = Permission.new
	end

	def edit
		@permission = Permission.find(params[:id])
	end

	def create
		@permission = Permission.new(params[:id])
	end

	def update
		@permission = Permission.find(params[:id])

	    if @permission.update(permissions_params)
	      redirect_to :action => 'show', :id => @permission.id
	    else
	      render 'edit'
	    end
	  end

	def destroy
		@permission = Permission.find(params[:id])
		@permission.destroy
	end


private

  def permission_params
      params.require(:permission).permit()
  end
end
