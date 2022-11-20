class Image < ApplicationRecord
  validates :photo, presence: true 

  belongs_to :photographer
end