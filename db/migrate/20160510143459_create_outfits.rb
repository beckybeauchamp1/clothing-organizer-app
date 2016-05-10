class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :description
      t.references :shirt, index: true, foreign_key: true
      t.references :pant, index: true, foreign_key: true
      t.references :tee, index: true, foreign_key: true
      t.references :skirt, index: true, foreign_key: true
      t.references :short, index: true, foreign_key: true
      t.references :dress, index: true, foreign_key: true
      t.references :tank, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
