class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :comments_counter

  def update_comment_counter(value)
    post.increment!(:comments_counter, value)
  end
end
