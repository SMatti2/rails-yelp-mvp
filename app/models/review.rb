class Review < ApplicationRecord

  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }
  validates :content, :rating, presence: true
  belongs_to :restaurant
end
