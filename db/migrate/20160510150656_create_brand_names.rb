class CreateBrandNames < ActiveRecord::Migration
  def change
    create_table :brand_names do |t|
      t.references :designer, index: true, foreign_key: true
      t.references :clothing, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
