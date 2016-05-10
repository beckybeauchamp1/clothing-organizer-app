class Designer < ActiveRecord::Base
  has_many :brand_names
  has_many :shirts, through: :brand_names
  has_many :tees, through: :brand_names
  has_many :pants, through: :brand_names
  has_many :shorts, through: :brand_names
  has_many :tanks, through: :brand_names
  has_many :dresses, through: :brand_names
end
