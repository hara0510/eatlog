class PostsController < ApplicationController

  before_action:set_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show_by_mealtime
    mealtime_id = params[:mealtime_id]
    @posts = Post.where(mealtime_id: mealtime_id)
    render :index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render:new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      render:edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end


  private
  def post_params
    params.require(:post).permit(:memo, :mealtime_id, :image)
    # .merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
