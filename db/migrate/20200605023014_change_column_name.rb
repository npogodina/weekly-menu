class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :food_items, :type, :category
  end
end
