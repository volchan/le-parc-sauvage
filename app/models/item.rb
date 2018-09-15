# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  i_type      :integer
#  name        :string
#  price_cents :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord
  has_many :tickets, dependent: :nullify

  monetize :price_cents

  enum i_type: { individual: 0, grouped: 1 }

  def format_price
    Money.new(price_cents, 'EUR').format(symbol_position: :after, display_free: 'gratuit')
  end
end
