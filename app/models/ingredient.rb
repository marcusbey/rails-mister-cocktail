class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: { message: "must be given please" }
end
