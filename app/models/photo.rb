class Photo < ApplicationRecord 
  validates :photo, presence: true
  
  belongs_to :photographer 

end
