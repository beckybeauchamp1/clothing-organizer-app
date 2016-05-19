class Clothing < ActiveRecord::Base
  has_many :shirts
  has_many :tees
  has_many :skirts
  has_many :shorts
  has_many :pants
  has_many :tanks
  has_many :dresses
end
