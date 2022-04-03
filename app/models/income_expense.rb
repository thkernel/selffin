# == Schema Information
#
# Table name: income_expenses
#
#  id         :bigint           not null, primary key
#  uid        :string
#  income_id  :bigint
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IncomeExpense < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :income
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end
	
end
