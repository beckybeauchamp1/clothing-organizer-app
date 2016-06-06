class Skirt < ActiveRecord::Base
  belongs_to :clothing
  has_many :photos, dependent: :destroy
  has_many :outfits, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings
end
