class ImageSerializer < ActiveModel::Serializer
  attributes :id, :photo 
  
  belongs_to :photographer 
  
end