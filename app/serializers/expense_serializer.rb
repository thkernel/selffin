# == Schema Information
#
# Table name: expenses
#
#  id                  :bigint           not null, primary key
#  uid                 :string
#  expense_category_id :bigint
#  designation         :string
#  is_recipient        :boolean
#  recipient_id        :bigint
#  document_reference  :string
#  amount              :float            default(0.0)
#  description         :text
#  user_id             :bigint
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :uid, :reason, :recipient, :document_reference, :amount, :description, :wallet_source, :bank_source, :status
  has_one :expense_category
  has_one :wallet
  has_one :bank
  has_one :user
end
