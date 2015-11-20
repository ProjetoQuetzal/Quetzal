class RolesController < ApplicationController
  def show
  	@role = Role.find(params[:id])
  end

   def edit
    @role = Role.find(params[:id])
    @users = User.all
  end

  def update
  	# params[:role][:user_ids] ||= []
    @role = Role.find(params[:id])
    if @role.update_attributes(role_params)
    	flash[:notice] = 'Papel atualizado.'
      redirect_to :action => 'show', :id => @role.id
    else
      render 'edit'
    end
  end

  private

  def role_params
        params.require(:role).permit(:title, :user_ids)
    end

end


