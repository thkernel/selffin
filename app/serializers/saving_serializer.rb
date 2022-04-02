class SavingSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :description, :amount, :status
  has_one :bank
  has_one :user
end
