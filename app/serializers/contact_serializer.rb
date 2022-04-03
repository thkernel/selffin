class ContactSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :civility, :address, :phone_number_1, :phone_number_2, :city, :contry, :email, :about, :status
  has_one :contact_type
end
