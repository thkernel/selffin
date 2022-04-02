class IncomeSavingItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :percenatge, :amount, :status
  has_one :income_saving
end
