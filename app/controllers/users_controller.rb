class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @posts_by_date = @posts.group_by { |post| post.created_at.to_date }
  end
end
