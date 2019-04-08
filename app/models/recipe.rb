class Recipe < ApplicationRecord
  has_many :quantities
  has_many :ingredients, through: :quantities
end
