class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
