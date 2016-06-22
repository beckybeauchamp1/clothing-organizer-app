class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :title
      t.string :website_url
      t.references :clothing, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
