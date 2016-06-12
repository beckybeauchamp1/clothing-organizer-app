class AddTimeswornColToClothing < ActiveRecord::Migration
  def change
    add_column :clothings, :times_worn, :integer
  end
end
