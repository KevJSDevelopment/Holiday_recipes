# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Holiday.delete_all
Recipe.delete_all
Ingredient.delete_all
RecipeIngredient.delete_all

Holiday.create(name: "Thanksgiving")
Holiday.create(name: "Christmas")
Holiday.create(name: "Halloween")
Holiday.create(name: "Easter")
Holiday.create(name: "4th of July")
Holiday.create(name: "Cinco de mayo")
holidays = Holiday.all
(20).times do 
    recipe = Recipe.create(name: Faker::Food.unique.dish, holiday_id: holidays.sample.id)
    ingredient = Ingredient.create(name: Faker::Food.ingredient)
    RecipeIngredient.create(recipe_id: recipe.id, ingredient_id: ingredient.id)
end