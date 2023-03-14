class Photo < ApplicationRecord 
  
  validates :photo
  belongs_to :photographer 

end