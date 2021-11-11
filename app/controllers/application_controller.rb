class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    User.order(created_at: :asc).limit(1)
  end
end
