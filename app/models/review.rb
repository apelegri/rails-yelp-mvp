class Review < ApplicationRecord
  REVIEWS = [0,1,2,3,4,5]
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: REVIEWS }, numericality: true
end
