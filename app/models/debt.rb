# == Schema Information
#
# Table name: debts
#
#  id              :bigint           not null, primary key
#  uid             :string
#  debt_type_id    :bigint
#  contracted_at   :date
#  repayment_date  :date
#  designation     :string
#  is_creditor     :boolean
#  creditor_id     :bigint
#  amount          :float            default(0.0)
#  interest_rate   :float            default(0.0)
#  interest_amount :float            default(0.0)
#  total           :float            default(0.0)
#  status          :string
#  description     :text
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Debt < ApplicationRecord
  include SharedUtils::Generate
	
  before_save :generate_random_number_uid

  belongs_to :debt_type
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end
	
end
