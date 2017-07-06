# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
all_cocktails = open(url).read
array_cocktail = JSON.parse(all_cocktails)

array_cocktail.each do |element|
  Cocktail.create!(element)
end
