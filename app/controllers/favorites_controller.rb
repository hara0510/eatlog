class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @user = current_user
  end

  def create
    @post = Post.find(params[:post_id])
    @favorite = @post.favorites.build
    @user_favorite = current_user.user_favorites.new(favorite: @favorite)

    if @favorite.save && @user_favorite.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

end
