class Question < ApplicationRecord
  validates :question, presence: true
end