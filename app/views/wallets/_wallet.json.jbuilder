json.extract! wallet, :id, :uid, :name, :description, :status, :user_id, :created_at, :updated_at
json.url wallet_url(wallet, format: :json)
