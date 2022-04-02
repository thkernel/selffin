class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :uid, :reason, :recipient, :document_reference, :amount, :description, :wallet_source, :bank_source, :status
  has_one :expense_category
  has_one :wallet
  has_one :bank
  has_one :user
end
