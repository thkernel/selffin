# == Schema Information
#
# Table name: expenses
#
#  id                  :bigint           not null, primary key
#  uid                 :string
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

class Expense < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :expense_category
  belongs_to :wallet
  belongs_to :bank
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
