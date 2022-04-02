class ExpenseDistributionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :percentage, :status
  has_one :expense_category
  has_one :user
end
