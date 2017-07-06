class Ingredient < ApplicationRecord
  has_many :doses, dependent: destroy
  has_many :cocktail, through: :doses

  validates :name, presence: true
  validates :name, uniqueness: true

end
