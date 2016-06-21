class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  def create
  	#@current_user ||= User.find(session[:user_id])
  	post_params = params.require(:post).permit(:title, :description, :image, :user_id, :period_id, :post_date)
    @post = Post.create(post_params)
  end

  def edit
    @post = Post.find(params[:id])
    render :update
  end

  def update
  	@post = Post.find(params[:id])
  	@post.save
  	redirect_to 'show_post_route'
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  end

end