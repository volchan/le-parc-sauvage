# == Schema Information
#
# Table name: tickets
#
#  id           :bigint(8)        not null, primary key
#  additional   :integer
#  code         :string
#  from         :date
#  stripe_token :string
#  to           :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  item_id      :bigint(8)
#  user_id      :bigint(8)
#
# Indexes
#
#  index_tickets_on_item_id  (item_id)
#  index_tickets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
