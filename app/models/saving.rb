# == Schema Information
#
# Table name: savings
#
#  id          :bigint           not null, primary key
#  uid         :string
#  designation :string
#  bank_id     :bigint
#  description :text
#  amount      :float            default(0.0)
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Saving < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :bank
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
