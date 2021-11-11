module ApplicationHelper
  def get_photo(user)
    user.photo.present? ? user.photo : "https://eu.ui-avatars.com/api/?name=#{user.name}&background=random"
  end
end
