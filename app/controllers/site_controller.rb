class SiteController < ApplicationController
    before_action :require_user

    def index
        @users = User.all
        @teams = Team.all
    end
end
