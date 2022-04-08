# == Schema Information
#
# Table name: savings
#
#  id          :bigint           not null, primary key
#  uid         :string
#  designation :string
#  bank_id     :bigint
#  description :text
#  amount      :float            default(0.0)
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Saving < ApplicationRecord
  include SharedUtils::Generate
	
  before_save :generate_random_number_uid
  after_save :update_bank_balance
  
  belongs_to :bank
  belongs_to :user

  # Change default params ID to uid
	def to_param
		uid
	end


	def update_bank_balance
      puts "SUBTOTAL: #{subtotal}"
      
      saving_amount = self[:amount].to_f
      bank = Bank.find(self[:bank_id])

      if bank.present?
      	bank_current_balance = bank.balance.to_f
      	bank_new_balance = bank_current_balance + saving_amount
      	bank.update_column(:balance, bank_new_balance)
        
      end
    end
end
