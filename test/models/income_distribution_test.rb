# == Schema Information
#
# Table name: income_distributions
#
#  id                 :bigint           not null, primary key
#  uid                :string
#  saving_percentage  :float            default(0.0)
#  expense_percentage :float            default(0.0)
#  status             :string
#  user_id            :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class IncomeDistributionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
