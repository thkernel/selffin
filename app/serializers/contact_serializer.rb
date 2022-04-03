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

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :civility, :address, :phone_number_1, :phone_number_2, :city, :contry, :email, :about, :status
  has_one :contact_type
end
