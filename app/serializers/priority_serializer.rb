class PrioritySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
  has_one :user
end
