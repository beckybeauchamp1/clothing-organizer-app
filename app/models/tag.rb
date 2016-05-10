class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :shirts, through: :taggings
  has_many :pants, through: :taggings
  has_many :tees, through: :taggings
  has_many :skirts, through: :taggings
  has_many :shorts, through: :taggings
  has_many :dresses, through: :taggings
  has_many :tanks, through: :taggings
end
