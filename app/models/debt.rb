class Debt < ApplicationRecord
  belongs_to :debt_type
  belongs_to :user
end
