class ExpenseCategorySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
  has_one :priority
  has_one :user
end
