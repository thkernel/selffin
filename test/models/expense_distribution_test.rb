# == Schema Information
#
# Table name: expense_distributions
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  expense_category_id :bigint
#  percentage          :float            default(0.0)
#  status              :string
#  user_id             :bigint
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ExpenseDistributionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
