# == Schema Information
#
# Table name: contacts
#
#  id              :bigint           not null, primary key
#  uid             :string
#  contact_type_id :bigint
#  first_name      :string
#  last_name       :string
#  civility        :string
#  address         :string
#  phone_number_1  :string
#  phone_number_2  :string
#  city            :string
#  contry          :string
#  email           :string
#  about           :string
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Contact < ApplicationRecord
  include SharedUtils::Generate
	
  before_save :generate_random_number_uid

  belongs_to :contact_type

  # Change default params ID to uid
	def to_param
		uid
	end

	
end
