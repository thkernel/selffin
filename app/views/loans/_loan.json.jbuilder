json.extract! loan, :id, :uid, :designation, :loan_date, :source, :description, :amount, :repayment_date, :status, :user_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
