class Dish < ApplicationRecord
  has_many :ingredients

  validates :name, presence: true, uniqueness: true
end
