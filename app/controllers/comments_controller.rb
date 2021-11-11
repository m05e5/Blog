class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.new(text: comment_params[:text], user: current_user)

    respond_to do |format|
      format.html do
        if comment.save
          redirect_to user_post_path(post.user.id, post.id), notice: 'comment successfully added'
        else
          flash.now[:error] = 'Comment could not be sent'
          redirect_to user_post_path(post.user.id, post.id), alert: 'Failed to add comment'
        end
      end
    end
  end

  private

  def comment_params
    params.require(:data).params(:text)
  end
end
