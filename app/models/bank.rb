# == Schema Information
#
# Table name: banks
#
#  id             :bigint           not null, primary key
#  uid            :string
#  name           :string
#  short_code     :string
#  account_type   :string
#  account_number :string
#  balance        :float            default(0.0)
#  description    :text
#  withdrawal     :boolean
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Bank < ApplicationRecord
	include SharedUtils::Generate
	
	before_save :generate_random_number_uid, :set_status

	belongs_to :user

  	validates :name, presence: true, uniqueness: true
  	
  	# Change default params ID to uid
	def to_param
		uid
	end

	private
	def set_status
		unless self.status.present?
			self.status = "Actif"
		end
	end

end
