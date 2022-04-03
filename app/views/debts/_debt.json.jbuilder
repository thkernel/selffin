json.extract! debt, :id, :uid, :debt_type_id, :contracted_at, :repayment_date, :reason, :creditor, :amount, :status, :description, :user_id, :created_at, :updated_at
json.url debt_url(debt, format: :json)
