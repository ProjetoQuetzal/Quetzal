class SiteController < ApplicationController
    before_filter :authorize

    def index
        @users = User.all
        @teams = Team.all
    end
end
