json.extract! bank, :id, :uid, :name, :balance, :description, :status, :user_id, :created_at, :updated_at
json.url bank_url(bank, format: :json)
