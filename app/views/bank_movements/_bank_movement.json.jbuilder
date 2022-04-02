json.extract! bank_movement, :id, :uid, :movement_type, :designation, :description, :source_id, :destination_id, :amount, :status, :user_id, :created_at, :updated_at
json.url bank_movement_url(bank_movement, format: :json)
