# == Schema Information
#
# Table name: wallet_movements
#
#  id             :bigint           not null, primary key
#  uid            :string
#  movement_type  :string
#  designation    :string
#  description    :text
#  source_id      :bigint
#  destination_id :bigint
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class WalletMovementSerializer < ActiveModel::Serializer
  attributes :id, :uid, :movement_type, :designation, :description, :amount, :status
  has_one :source
  has_one :destination
  has_one :user
end
