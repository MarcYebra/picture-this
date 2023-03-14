class PhotoSerializer < ActiveModel::Serializer
  
  attributes :id, :photo, :created_at
  belongs_to :photographer 

end