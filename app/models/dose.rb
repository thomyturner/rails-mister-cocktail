class Dose < ApplicationRecord
  validates :description, presence: true
  validates_uniqueness_of :ingredient, scope: :cocktail
  belongs_to :ingredient
  belongs_to :cocktail
end
