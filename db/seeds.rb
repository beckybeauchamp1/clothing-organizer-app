# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Designer.destroy_all
# Clothing.destroy_all
# Outfit.destroy_all


designers = ["6 SHORE ROAD",
"7 For All Mankind",
"Acacia Swimwear",
"adidas by Stella McCartney",
"AG Adriano Goldschmied",
"Alice + Olivia",
"Amanda Uprichard",
"American Vintage",
"ANINE BING",
"AQ/AQ",
"Bailey 44",
"BB Dakota",
"BCBGeneration",
"BCBGMAXAZRIA",
"BEC&BRIDGE",
"BLANKNYC",
"Blue Life",
"Bobi",
"Brian Lichtenberg",
"Canada Goose",
"Chaser",
"Cheap Monday",
"Citizens of Humanity",
"Clover Canyon",
"Current/Elliott",
"Diane von Furstenberg",
"Dolce Vita",
"eberjey",
"Eight Sixty",
"Elizabeth and James",
"Equipment",
"Finders Keepers",
"For Love & Lemons",
"Free People",
"Frye",
"G-Star",
"Haute Hippie",
"Hudson Jeans",
"Indah",
"J Brand",
"James Perse",
"Jeffrey Campbell",
"Jen's Pirate Booty",
"Joe's Jeans",
"Joie",
"Karen Walker",
"keepsake",
"LA Made",
"Lauren Moshi",
"Lovers + Friends",
"Mackage",
"Mara Hoffman",
"Marc by Marc Jacobs",
"McQ Alexander McQueen",
"MIKOH",
"MILLY",
"MINKPINK",
"MOTHER",
"NBD",
"One Teaspoon",
"Paige Denim",
"Parker",
"Rachel Pally",
"rag & bone/JEAN",
"Rails",
"Ray-Ban",
"Rebecca Minkoff",
"Rebecca Taylor",
"Riller & Fount",
"Siwy",
"Splendid",
"STONE_COLD_FOX",
"Stuart Weitzman",
"STYLESTALKER",
"Susana Monaco",
"T by Alexander Wang",
"T-Bags LosAngeles",
"Three Floor",
"Tibi",
"Tolani",
"Tularosa",
"UNIF",
"Velvet by Graham & Spencer",
"Wildfox Couture"]

# clothing_tops= []
# clothing_bottoms = []
#
# sizes = ["XXS", "XS", "S", "M", "L", "XL", "XXL"]
# lengths = ["short", "mid", "long"]
# types = ["Shirt", "Dress", "Pant", "Shorart", "Skirt"]
#
# 100.times do |clothing|
#   clothing = Clothing.create!(
#   title: Faker::Commerce.product_name,
#   cost: Faker::Commerce.price,
#   size: sizes.shuffle.pop,
#   description: Faker::Lorem.sentence,
#   length: lengths.shuffle.pop,
#   color: Faker::Color.color_name,
#   type: types.shuffle.pop,
#   times_worn: (1..20).to_a.shuffle.pop
#   )
#   if clothing.type == "Shirt" || clothing.type == "Dress"
#     clothing_tops << clothing
#   else
#     clothing_bottoms << clothing
#   end
# end
#
# puts clothing_bottoms.shuffle.pop.id
#
# 30.times do |outfits|
#   outfit = Outfit.create!(
#   description: Faker::Lorem.sentence,
#   clothing_top_id: clothing_tops.shuffle.pop.id,
#   clothing_bottom_id: clothing_bottoms.shuffle.pop.id
#   )
# end
#
# 30.times do |outfits|
#   outfit = Outfit.create!(
#   description: Faker::Lorem.sentence,
#   clothing_top_id: clothing_tops.shuffle.pop.id,
#   clothing_bottom_id: clothing_bottoms.shuffle.pop.id
#   )
# end

designers.each do |person|
  Designer.create!(name: person)
end
