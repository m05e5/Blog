class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id]).order(created_at: :desc)
    @user = User.find_by(id: params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @comments = @post.comments.all.order('created_at')
    @liked = @post.liked? current_user.id
  end

  
  def create
    post = current_user.posts.new(post_params)
    
    respond_to do |format|
      format.html do
        if post.save
          redirect_to user_post_path(post.user.id, post.id), notice: 'Post added successfully'
        else
          flash.now[:alert] = 'Post could not be added'
          render :new
        end
      end
    end
  end
  
  def new; end
  
  private

  def post_params
    params.require(:data).permit(:title, :text)
  end
end
