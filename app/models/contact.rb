# == Schema Information
#
# Table name: contacts
#
#  id              :bigint           not null, primary key
#  uid             :string
#  contact_type_id :bigint
#  company_name    :string
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
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Contact < ApplicationRecord
  include SharedUtils::Generate
	
  before_save :generate_random_number_uid

  belongs_to :contact_type
  has_many :expenses, :class_name => "Expense", :foreign_key => :recipient_id

  # Change default params ID to uid
	def to_param
		uid
	end

	def contact_name
		if self.company_name.present?
			"#{company_name}"
		else
	    	"#{first_name} #{last_name}"
	    end
	 end
	
end
