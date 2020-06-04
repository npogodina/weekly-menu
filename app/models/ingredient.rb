class Ingredient < ApplicationRecord
  belongs_to :dish
  belongs_to :food_item

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
