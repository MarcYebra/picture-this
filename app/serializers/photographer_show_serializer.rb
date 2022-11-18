class PhotographerShowSerializer < ActiveModel::Serializer 
  attributes :id, :first_name, :last_name, :email, :description, :location

  has_many :reviews  

  def reviews 
    object.reviews.reverse() 
  end

end