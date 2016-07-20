class RemoveClothingIdFromDesigners < ActiveRecord::Migration
  def change
    remove_column :designers, :clothing_id
    add_column :clothings, :designer_id, :integer, references: :clothings
  end
end
