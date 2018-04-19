class HomeController < ApplicationController

	def index
    	@all_activities = Activity.all
    end

end
