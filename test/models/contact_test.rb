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

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
