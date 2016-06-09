class Outfit < ActiveRecord::Base
  belongs_to :clothing_top, class_name: "Clothing"
  belongs_to :clothing_bottom, class_name: "Clothing"
  
  def grabClothingItems
    @values = self.values
    puts @values
  end

end
