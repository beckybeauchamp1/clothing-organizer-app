class AddXAndYCoordinatesToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :x, :integer
    add_column :photos, :y, :integer
  end
end
