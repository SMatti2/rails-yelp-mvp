class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates_inclusion_of :category, in: CATEGORIES
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
end
