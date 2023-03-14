class Photographer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :description, presence: true 
  validates :location, presence: true 

  has_many :reviews
  has_many :photos

end
