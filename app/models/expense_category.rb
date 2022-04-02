class ExpenseCategory < ApplicationRecord
  belongs_to :priority
  belongs_to :user
end
