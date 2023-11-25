class UsersController < ApplicationController
  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)

    if @user
    @nickname = @user.nickname
    @bio = @user.bio
    @posts = @user.posts
    @posts_by_date = @posts.group_by { |post| post.created_at.to_date }
    end
  end
end
