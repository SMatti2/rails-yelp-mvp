class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates_inclusion_of :category, in: CATEGORIES
  has_many :reviews, dependent: :destroy
end
