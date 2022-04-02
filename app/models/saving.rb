class Saving < ApplicationRecord
  belongs_to :bank
  belongs_to :user
end
