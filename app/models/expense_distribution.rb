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

class ExpenseDistribution < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :expense_category
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end
	
end
