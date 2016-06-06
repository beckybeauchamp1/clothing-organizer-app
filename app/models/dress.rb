class Dress < ActiveRecord::Base
  belongs_to :clothing
  has_many :photos, dependent: :destroy
  has_many :outfits
  has_many :taggings
  has_many :tags, through: :taggings
end
