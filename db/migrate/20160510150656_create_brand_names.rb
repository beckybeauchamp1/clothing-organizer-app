class CreateBrandNames < ActiveRecord::Migration
  def change
    create_table :brand_names do |t|
      t.references :designer, index: true, foreign_key: true
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
