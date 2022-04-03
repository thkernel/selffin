# == Schema Information
#
# Table name: expense_categories
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  priority_id :bigint
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ExpenseCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
