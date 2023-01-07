class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reviews

  mount_uploader :profile_photo, ProfilePhotoUploader
  
end
