# == Schema Information
#
# Table name: expense_categories
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  priority_id :bigint
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ExpenseCategorySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
  has_one :priority
  has_one :user
end
