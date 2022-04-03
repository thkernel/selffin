# == Schema Information
#
# Table name: incomes
#
#  id             :bigint           not null, primary key
#  uid            :string
#  income_date    :date
#  income_type_id :bigint
#  designation    :string
#  description    :text
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class IncomeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
