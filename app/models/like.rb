class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :likes_counter

  def update_like_counter
    post.increment!(:likes_counter)
  end
end
