class PeriodsController < ApplicationController
	
	def index
		@periods = Period.all.order(start_time: :desc)
		render :index
	end

	def show
		@period = Period.find(params[:id])
    	render :show
	end

  def new
    @period = Period.new
    render :new
  end

	def create
  		period_params = params.require(:period).permit(:name, :description, :image, :start_time, :end_time)
  		@period = Period.create(period_params)
      @user = current_user
      @user.periods << @period
      redirect_to '/periods'
  	end

  	def edit
  		@period = Period.find(params[:id])
  		render :edit
  	end

  	def update
  		@period = Period.find(params[:id])
    	period_params = params.require(:post).permit(:title, :description, :image, :user_id, :period_id, :post_date)
    	if @period.update_attributes(period_params)
  			redirect_to '/periods/:id'
    	end
  	end

  	def destroy
  		@period = Period.find(params[:id])
  		@period.destroy
  	end
end
