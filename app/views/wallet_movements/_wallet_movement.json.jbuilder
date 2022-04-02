json.extract! wallet_movement, :id, :uid, :movement_type, :designation, :description, :source_id, :destination_id, :amount, :status, :user_id, :created_at, :updated_at
json.url wallet_movement_url(wallet_movement, format: :json)
