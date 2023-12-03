class FollowsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    type = params[:type].presence || 'followers'
    if @user
      @title = type == 'followers' ? 'フォローされている' : 'フォローしている'
      @users = type == 'followers' ? @user.followers : @user.followings
    else
      redirect_to root_path
    end
  end

  def create
    follow = current_user.active_follows.new(follower_id: params[:user_id])
    follow.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    follow = current_user.active_follows.find_by(follower_id: params[:user_id])
    follow.destroy
    redirect_back(fallback_location: root_path)
  end
end
