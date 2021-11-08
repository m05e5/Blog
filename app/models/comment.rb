class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :post, counter_cache: :comments_counter

  def update_comment_counter(value)
    post.update('comments_counter', value)
  end
end
