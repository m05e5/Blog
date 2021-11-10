module UsersHelper
  def get_photo(user)
    user.photo.present? ? user.photo : 'https://eu.ui-avatars.com/api/?name=Sylvestre&background=random'
  end
end
