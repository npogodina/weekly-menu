class FoodItem < ApplicationRecord
  has_many :ingredients

  validates :name, presence: true, uniqueness: true
  
  before_save :default_values
  
  def default_values
    self.name = self.name.split.map(&:capitalize).join(' ')
    self.category = self.category.split.map(&:capitalize).join(' ')
    self.units.downcase!
  end
end
