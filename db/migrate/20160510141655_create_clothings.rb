class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :description
      t.string :title
      t.string :type
      t.string :size
      t.string :length
      t.string :material
      t.string :height
      t.string :color
      t.integer :cost
      t.string :sleeves  
      t.timestamps null: false
    end
  end
end
