class Dress < ActiveRecord::Base
  belongs_to :clothing
  has_many :images, dependent: :destroy
  mount_uploader :image, ImageUploader
  # should this be dependent destory?
  has_many :outfits
  has_many :taggings
  has_many :tags, through: :taggings
end
