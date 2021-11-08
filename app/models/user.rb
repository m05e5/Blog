class User < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  def recent_posts
    posts.order('created_at Desc').limit(3)
  end
end
