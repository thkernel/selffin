json.extract! expense_category, :id, :uid, :name, :priority_id, :status, :user_id, :created_at, :updated_at
json.url expense_category_url(expense_category, format: :json)
