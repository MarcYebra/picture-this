class PhotographerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :description, :location, :profile_photo, :category

end