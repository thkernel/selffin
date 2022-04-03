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

class ExpenseCategory < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :priority
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
