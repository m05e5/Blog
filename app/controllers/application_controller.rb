class ApplicationController < ActionController::Base
  def current_user
    User.order(created_at: :asc).limit(1)
  end
end
