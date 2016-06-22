class Designer < ActiveRecord::Base
  has_many :clothing
  validates :name, uniqueness: true
end
