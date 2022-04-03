# == Schema Information
#
# Table name: debts
#
#  id              :bigint           not null, primary key
#  uid             :string
#  debt_type_id    :bigint
#  contracted_at   :date
#  repayment_date  :date
#  designation     :string
#  is_creditor     :boolean
#  creditor_id     :bigint
#  amount          :float            default(0.0)
#  interest_rate   :float            default(0.0)
#  interest_amount :float            default(0.0)
#  total           :float            default(0.0)
#  status          :string
#  description     :text
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class DebtTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
