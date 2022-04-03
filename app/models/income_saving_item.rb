# == Schema Information
#
# Table name: income_saving_items
#
#  id               :bigint           not null, primary key
#  uid              :string
#  income_saving_id :bigint
#  percentage       :float            default(0.0)
#  amount           :float            default(0.0)
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class IncomeSavingItem < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :income_saving

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
