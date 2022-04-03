# == Schema Information
#
# Table name: priorities
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Priority < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid
	
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
