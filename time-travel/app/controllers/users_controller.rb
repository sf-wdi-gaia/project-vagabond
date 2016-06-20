class UsersController < ApplicationController

  def home
    render :index
  end

  def new
  	@user = User.new
  	render :new
  end

  def create
  	user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
  	@user=User.create(user_params)

  	redirect_to(user_id_path(@user.id))
  end

  def show
  	@user = User.find(params[:id])
    render :show
  end



end
