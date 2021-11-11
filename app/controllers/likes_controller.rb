class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.likess.new(user: current_user)

    respond_to do |format|
      format.html do
        if like.save
          redirect_to user_post_path(post.user.id, post.id), notice: 'Liked successfully'
        else
          redirect_to user_post_path(post.user.id, post.id), alert: 'Could not be liked'
        end
      end
    end
  end
end
