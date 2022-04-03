# == Schema Information
#
# Table name: income_savings
#
#  id         :bigint           not null, primary key
#  uid        :string
#  income_id  :bigint
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class IncomeSavingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
