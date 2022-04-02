class Expense < ApplicationRecord
  belongs_to :expense_category
  belongs_to :wallet
  belongs_to :bank
  belongs_to :user
end
