class Income < ApplicationRecord
  belongs_to :income_type
  belongs_to :wallet
  belongs_to :bank
  belongs_to :user
end
