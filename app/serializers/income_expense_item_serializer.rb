class IncomeExpenseItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :percenatge, :amount, :status
  has_one :income_expense
end
