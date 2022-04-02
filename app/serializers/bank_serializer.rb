class BankSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :balance, :description, :status
  has_one :user
end
