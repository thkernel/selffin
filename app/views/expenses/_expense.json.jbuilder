json.extract! expense, :id, :uid, :expense_category_id, :reason, :recipient, :document_reference, :amount, :description, :wallet_source, :wallet_id, :bank_source, :bank_id, :user_id, :status, :created_at, :updated_at
json.url expense_url(expense, format: :json)
