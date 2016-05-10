class BrandName < ActiveRecord::Base
  belongs_to :designer
  belongs_to :shirt
  belongs_to :pant
  belongs_to :tee
  belongs_to :skirt
  belongs_to :short
  belongs_to :dress
end
