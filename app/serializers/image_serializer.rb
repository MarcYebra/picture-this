class ImageSerializer < ActiveModel::Serializer
  attributes :id, :photo, :photographer_id
  
  belongs_to :photographer 
  
end