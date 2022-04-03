# == Schema Information
#
# Table name: expenses
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  expense_date        :datetime
#  expense_category_id :bigint
#  designation         :string
#  is_recipient        :boolean
#  recipient_id        :bigint
#  document_reference  :string
#  amount              :float            default(0.0)
#  description         :text
#  user_id             :bigint
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
