# == Schema Information
#
# Table name: prices
#
#  id         :bigint(8)        not null, primary key
#  amout      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Price < ApplicationRecord
  has_many :tickets, dependent: :nullify
end
