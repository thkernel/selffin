class WalletMovementSerializer < ActiveModel::Serializer
  attributes :id, :uid, :movement_type, :designation, :description, :amount, :status
  has_one :source
  has_one :destination
  has_one :user
end
