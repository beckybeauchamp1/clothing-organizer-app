class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :title
      t.string :website_url

      t.timestamps null: false
    end
  end
end
