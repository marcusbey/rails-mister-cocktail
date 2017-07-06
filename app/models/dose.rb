class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, :message => "can't be empty"

  validates :cocktail, uniqueness: {:scope => :ingredient}, :message => "This already exist"
  validates :ingredient, uniqueness: {:scope => :cocktail}, :message => "This already exist"
end
