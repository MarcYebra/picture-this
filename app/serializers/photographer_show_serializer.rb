class PhotographerShowSerializer < ActiveModel::Serializer 
  attributes :id, :first_name, :last_name, :email, :description, :location, :profile_photo, :category

  def reviews 
    object.reviews.reverse() 
  end
  
  has_many :reviews  
  has_many :photos

end
