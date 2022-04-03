# == Schema Information
#
# Table name: wallet_movements
#
#  id             :bigint           not null, primary key
#  uid            :string
#  movement_type  :string
#  designation    :string
#  description    :text
#  source_id      :bigint
#  destination_id :bigint
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class WalletMovementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
