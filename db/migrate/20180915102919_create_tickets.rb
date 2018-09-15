class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :price, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :additional

      t.timestamps
    end
  end
end
