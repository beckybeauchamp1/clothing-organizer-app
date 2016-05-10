class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.references :outfit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
