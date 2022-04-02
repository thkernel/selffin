class BankMovement < ApplicationRecord
  belongs_to :source
  belongs_to :destination
  belongs_to :user
end
