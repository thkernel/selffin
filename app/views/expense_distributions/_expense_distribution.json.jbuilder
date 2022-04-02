json.extract! expense_distribution, :id, :uid, :expense_category_id, :percentage, :status, :user_id, :created_at, :updated_at
json.url expense_distribution_url(expense_distribution, format: :json)
