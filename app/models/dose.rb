class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  # validates_uniqueness_of :cocktail, :scope => [:ingredient]
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
