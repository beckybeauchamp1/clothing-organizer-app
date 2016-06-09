class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :description
      t.integer :clothing_top_id
      t.integer :clothing_bottom_id
      t.timestamps null: false
    end
  end
end
