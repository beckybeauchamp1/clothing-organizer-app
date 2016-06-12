class Clothing < ActiveRecord::Base
  has_many :photos
  has_many :saved_tops, class_name: "Outfit", foreign_key: "clothing_top_id"
  has_many :clothing_tops, through: :saved_tops
  has_many :saved_bottoms, class_name: "Outfit", foreign_key: "clothing_bottom_id"
  has_many :clothing_bottoms, through: :saved_bottoms
end
