class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :shirt
  belongs_to :pant
  belongs_to :tee
  belongs_to :skirt
  belongs_to :short
  belongs_to :dress
  belongs_to :tank
end
