class Recipe < ApplicationRecord
    belongs_to :holiday
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
end
