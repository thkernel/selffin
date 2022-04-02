class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :description, :amount, :wallet_destionation, :bank_destination, :status
  has_one :income_type
  has_one :wallet
  has_one :bank
  has_one :user
end
