class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.references :clothing, index: true, foreign_key: true
      t.string :title
      t.integer :cost
      t.string :size
      t.string :description
      t.string :length
      t.boolean :jean
      t.string :waist
      t.string :color
      t.timestamps null: false
    end
  end
end
