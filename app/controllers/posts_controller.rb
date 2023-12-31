class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :show_by_mealtime]

  def index
    @posts = Post.all
  end

  def show_by_mealtime
    mealtime_id = params[:mealtime_id]
    @posts = Post.where(mealtime_id:)
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
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
    if user_signed_in? && @current_user.id == @post.user_id
      render :edit
    else
      redirect_to post_path(@post.id)
    end
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    return unless user_signed_in? && current_user.id == @post.user_id

    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:memo, :mealtime_id, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
