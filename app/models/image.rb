class Image < ApplicationRecord

  belongs_to :photographer, optional: true 
end