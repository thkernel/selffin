class LoanSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :loan_date, :source, :description, :amount, :repayment_date, :status
  has_one :user
end
