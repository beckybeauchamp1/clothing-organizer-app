class Short < ActiveRecord::Base
  belongs_to :clothing
  has_many :images, dependent: :destroy
  has_many :outfits, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings
end
