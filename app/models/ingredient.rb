class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, uniqueness: true, presence: true, :message => "can't be empty"
end
