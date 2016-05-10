class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.references :clothing, index: true, foreign_key: true
      t.string :title
      t.string :brand
      t.integer :cost
      t.string :size
      t.string :description
      t.string :length
      t.boolean :jean
      t.string :waist

      t.timestamps null: false
    end
  end
end
