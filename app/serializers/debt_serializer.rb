class DebtSerializer < ActiveModel::Serializer
  attributes :id, :uid, :contracted_at, :repayment_date, :reason, :creditor, :amount, :status, :description
  has_one :debt_type
  has_one :user
end
