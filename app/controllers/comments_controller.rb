class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @post = @comment.post
    redirect_to post_path(@post.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
