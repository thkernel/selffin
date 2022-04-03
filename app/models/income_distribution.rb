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

class IncomeDistribution < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end
	
end
