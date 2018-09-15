class ChangePriceNameToItem < ActiveRecord::Migration[5.2]
  def change
    rename_table :prices, :items
    add_column :items, :name, :string
  end
end
