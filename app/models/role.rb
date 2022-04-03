# == Schema Information
#
# Table name: roles
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Role < ApplicationRecord
	include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
	# Change default params ID to uid
	def to_param
		uid
	end

	
end
