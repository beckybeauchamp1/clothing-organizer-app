# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Shirt.destroy_all
Pant.destroy_all
Tee.destroy_all
Tank.destroy_all
Short.destroy_all
Skirt.destroy_all
Dress.destroy_all
Clothing.destroy_all

@clothing = Clothing.create!(description: "Becky's Closet")

sizes = ["XXS", "XS", "S", "M", "L", "XL", "XXL"]
lengths = ["short", "mid", "long"]
jeans = [true, false]
waist = ["high", "mid", "low"]
shirts = []
shorts = []
skirts = []
pants = []
tees = []
dresses = []
tanks =[]

10.times do |shirt|
  shirt = Shirt.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  shirts << shirt
end

10.times do |tee|
  tee = Tee.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  tees << tee
end

10.times do |pant|
  pant = Pant.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  jean: jeans.shuffle.pop,
  waist: waist.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  pants << pant
end

10.times do |tank|
  tank = Tank.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  tanks << tank
end

10.times do |skirt|
  skirt = Skirt.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  skirts << skirt
end

10.times do |short|
  short = Short.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  jean: jeans.shuffle.pop,
  waist: waist.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  shorts << short
end

10.times do |dress|
  dress = Dress.create!(
  clothing_id: @clothing.id,
  title: Faker::Commerce.product_name,
  cost: Faker::Commerce.price,
  size: sizes.shuffle.pop,
  description: Faker::Lorem.sentence,
  length: lengths.shuffle.pop,
  color: Faker::Color.color_name
  )
  dresses << dress
end

10.times do |outfits|
  outfit = Outfit.create!(
  description: Faker::Lorem.sentence,
  shirt: shirts.shuffle.pop,
  pant: pants.shuffle.pop,
  )
end


10.times do |outfits|
  outfit = Outfit.create!(
  description: Faker::Lorem.sentence,
  tank: tanks.shuffle.pop,
  skirt: skirts.shuffle.pop,
  )
end


10.times do |outfits|
  outfit = Outfit.create!(
  description: Faker::Lorem.sentence,
  short: shorts.shuffle.pop,
  tee: tees.shuffle.pop,
  )
end
