# == Schema Information
#
# Table name: wallets
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  short_code  :string
#  balance     :float            default(0.0)
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WalletSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :description, :status
  has_one :user
end
