class PhotographerShowSerializer < ActiveModel::Serializer 
  attributes :id, :first_name, :last_name, :email, :description, :location, :profile_photo, :category

  has_many :reviews  
  has_many :images 

  def reviews 
    object.reviews.reverse() 
  end

end