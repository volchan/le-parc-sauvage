class RenamePriceInItem < ActiveRecord::Migration[5.2]
  def up
    rename_column :items, :amout, :price_cents
  end

  def down
    rename_column :items, :price_cents, :amout
  end
end
