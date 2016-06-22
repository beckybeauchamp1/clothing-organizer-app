class ChangeDesignersTableTitleColName < ActiveRecord::Migration
  def change
    rename_column :designers, :title, :name
  end
end
