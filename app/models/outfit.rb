class Outfit < ActiveRecord::Base
  belongs_to :shirt
  belongs_to :pant
  belongs_to :tee
  belongs_to :skirt
  belongs_to :short
  belongs_to :dress
  belongs_to :tank
  has_many :seasons, dependent: :destroy

  def grabClothingItems
    @values = self.values
    puts @values
  end
end
