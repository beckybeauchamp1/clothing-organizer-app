class Shirt < ActiveRecord::Base
  belongs_to :clothing
  has_many :images
  has_many :outfits
  has_many :taggings
  has_many :tags, through: :taggings
end
