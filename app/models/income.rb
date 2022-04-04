# == Schema Information
#
# Table name: incomes
#
#  id             :bigint           not null, primary key
#  uid            :string
#  income_date    :date
#  income_type_id :bigint
#  designation    :string
#  description    :text
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Income < ApplicationRecord
  include SharedUtils::Generate
	
	before_save :generate_random_number_uid

  belongs_to :income_type
  
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end
	
end
