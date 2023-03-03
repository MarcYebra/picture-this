class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :questions

  mount_uploader :profile_photo, ProfilePhotoUploader
  
end
