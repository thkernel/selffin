class IncomeExpenseSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :income
  has_one :user
end
