class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  private

  def message_params
    params.require(:message).permit(:memo, :meal_time, :image)
    # .merge(user_id: current_user.id)
  end
end
