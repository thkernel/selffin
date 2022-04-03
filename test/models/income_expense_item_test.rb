# == Schema Information
#
# Table name: income_expense_items
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  income_expense_id   :bigint
#  expense_category_id :bigint
#  percentage          :float            default(0.0)
#  amount              :float            default(0.0)
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class IncomeExpenseItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
