class FoodItem < ApplicationRecord
  has_many :ingredients

  validates :name, presence: true, uniqueness: true
  default_scope { order(name: :desc) }
end
