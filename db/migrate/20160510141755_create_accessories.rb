class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
