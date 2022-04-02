class IncomeDistributionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :saving_percentage, :expense_percentage, :status
  has_one :user
end
