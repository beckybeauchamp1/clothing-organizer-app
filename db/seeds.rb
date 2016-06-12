# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Clothing.destroy_all
Outfit.destroy_all

clothing_tops= []
clothing_bottoms = []

sizes = ["XXS", "XS", "S", "M", "L", "XL", "XXL"]
lengths = ["short", "mid", "long"]
types = ["Shirt", "Dress", "Pant", "Short"]

100.times do |clothing|
  clothing = Clothing.create!(
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name,
  type: types.shuffle.pop
  )
  if clothing.type == "Shirt" || clothing.type == "Dress"
    clothing_tops << clothing
  else
    clothing_bottoms << clothing
  end
end

puts clothing_bottoms.shuffle.pop.id

30.times do |outfits|
  outfit = Outfit.create!(
  description: Faker::Lorem.sentence,
  clothing_top_id: clothing_tops.shuffle.pop.id,
  clothing_bottom_id: clothing_bottoms.shuffle.pop.id
  )
end


30.times do |outfits|
  outfit = Outfit.create!(
  description: Faker::Lorem.sentence,
  clothing_top_id: clothing_tops.shuffle.pop.id,
  clothing_bottom_id: clothing_bottoms.shuffle.pop.id
  )
end
