# == Schema Information
#
# Table name: wallet_movements
#
#  id             :bigint           not null, primary key
#  uid            :string
#  movement_type  :string
#  designation    :string
#  description    :text
#  source_id      :bigint
#  destination_id :bigint
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class WalletMovement < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	

  belongs_to :source
  belongs_to :destination
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
