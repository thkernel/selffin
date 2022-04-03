# == Schema Information
#
# Table name: income_expenses
#
#  id         :bigint           not null, primary key
#  uid        :string
#  income_id  :bigint
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IncomeExpenseSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :income
  has_one :user
end
