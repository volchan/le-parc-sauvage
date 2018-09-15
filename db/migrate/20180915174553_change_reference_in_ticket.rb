class ChangeReferenceInTicket < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tickets, :price, index: true
    add_reference :tickets, :item, index: true
  end
end
