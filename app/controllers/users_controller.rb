class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.recent_posts
  end
end
