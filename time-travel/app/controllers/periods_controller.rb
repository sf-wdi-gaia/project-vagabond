class PeriodsController < ApplicationController
	
	def index
		@periods = Period.all
		render :index
	end

	def show
		@period = Period.find(params[:id])
    	render :show
	end
end
