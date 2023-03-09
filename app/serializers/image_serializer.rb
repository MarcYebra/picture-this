class ImageSerializer < ActiveModel::Serializer
  attributes :id, :photo_url, :photographer_id
  
  belongs_to :photographer 
  
end