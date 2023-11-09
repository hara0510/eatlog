class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to '/'
  end

  private
  def post_params
    params.require(:post).permit(:memo, :mealtime_id, :image)
    # .merge(user_id: current_user.id)
  end
end
