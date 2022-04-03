# == Schema Information
#
# Table name: incomes
#
#  id             :bigint           not null, primary key
#  uid            :string
#  income_date    :date
#  income_type_id :bigint
#  designation    :string
#  description    :text
#  amount         :float            default(0.0)
#  status         :string
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class IncomeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :designation, :description, :amount, :wallet_destionation, :bank_destination, :status
  has_one :income_type
  has_one :wallet
  has_one :bank
  has_one :user
end
