class ChangeImagesTableToPhotos < ActiveRecord::Migration
  def change
    rename_table :images, :photos
  end
end
