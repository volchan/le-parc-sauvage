# == Schema Information
#
# Table name: tickets
#
#  id         :bigint(8)        not null, primary key
#  additional :integer
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price_id   :bigint(8)
#  user_id    :bigint(8)
#
# Indexes
#
#  index_tickets_on_price_id  (price_id)
#  index_tickets_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (price_id => prices.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
