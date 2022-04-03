class ContactTypeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :description, :status
  has_one :user
end