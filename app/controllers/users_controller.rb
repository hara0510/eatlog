class UsersController < ApplicationController
  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)
    @posts_by_date = @user.posts.group_by { |post| post.created_at.to_date }
  end
end
