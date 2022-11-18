class Town < ApplicationRecord
  validates :town, uniqueness: true 
end