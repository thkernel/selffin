# == Schema Information
#
# Table name: wallets
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  short_code  :string
#  balance     :float            default(0.0)
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Wallet < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
