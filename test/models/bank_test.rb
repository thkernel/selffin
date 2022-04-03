# == Schema Information
#
# Table name: banks
#
#  id             :bigint           not null, primary key
#  uid            :string
#  name           :string
#  short_code     :string
#  account_type   :string
#  account_number :string
#  balance        :float            default(0.0)
#  description    :text
#  withdrawal     :boolean
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class BankTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
