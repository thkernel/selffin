json.extract! income, :id, :uid, :income_type_id, :designation, :description, :amount, :wallet_destionation, :wallet_id, :bank_destination, :bank_id, :status, :user_id, :created_at, :updated_at
json.url income_url(income, format: :json)
