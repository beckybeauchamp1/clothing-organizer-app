class ChangeColumnSleevesToSleeveType < ActiveRecord::Migration
  def change
    rename_column :clothings, :sleeves, :sleeve_type
  end
end
