class AddFromAndToToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :from, :date
    add_column :tickets, :to, :date
  end
end
