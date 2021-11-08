class Post < ApplicationRecord
  belongs_to :user, counter_cache: :posts_counter
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def recent_comments(limit = 5)
    comments.last(limit)
  end

  def update_post_counter(value)
    user.increment!(:posts_counter, value)
  end
end
