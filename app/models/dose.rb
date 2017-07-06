class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: { message: "must be given please" }

  validates :cocktail, uniqueness: {:scope => :ingredient
    message: "This already exist"}
  validates :ingredient, uniqueness: {:scope => :cocktail}
end
