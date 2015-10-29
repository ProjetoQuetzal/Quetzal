class RolesController < ApplicationController
  def show
    @role = Role.all
  end
end
