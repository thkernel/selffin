class LendSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :lend_date, :recipient, :description, :amount, :repayment_date, :status
  has_one :user
end
