class Cocktail < ApplicationRecord
  # ASSOCIATIONS
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  mount_uploader :photo, PhotoUploader
  # VALIDATION (can't .save without that)
  validates :name, uniqueness: true, presence: true
end

