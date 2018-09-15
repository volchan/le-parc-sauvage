class AddStripeTokenToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :stripe_token, :string
  end
end
