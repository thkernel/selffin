# == Schema Information
#
# Table name: savings
#
#  id          :bigint           not null, primary key
#  uid         :string
#  designation :string
#  bank_id     :bigint
#  description :text
#  amount      :float            default(0.0)
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SavingSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :description, :amount, :status
  has_one :bank
  has_one :user
end
