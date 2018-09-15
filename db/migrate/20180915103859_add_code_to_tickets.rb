class AddCodeToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :code, :string
  end
end
