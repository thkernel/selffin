# == Schema Information
#
# Table name: wallets
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  short_code  :string
#  balance     :float            default(0.0)
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class WalletTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
