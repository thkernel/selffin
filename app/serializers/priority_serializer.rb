# == Schema Information
#
# Table name: priorities
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PrioritySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
  has_one :user
end
