class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @user = User.find(params[:id])
    @favorite_posts = @user.favorites.map(&:post)
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

  def destroy
    @post = Post.find(params[:post_id])
    @favorites = current_user.favorites.where(post_id: @post.id)
    if @favorites.any?
      favorite_ids = @favorites.ids
      current_user.user_favorites.where(favorite_id: favorite_ids).destroy_all
      Favorite.destroy(favorite_ids)
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end
end
