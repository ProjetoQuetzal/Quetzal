class SiteController < ApplicationController
    before_action :require_user

    def index
        if current_user
        	redirect_to :controller => 'teams', :action => 'show', :teamid => 1
        end

    end
end
