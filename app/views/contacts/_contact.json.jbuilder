json.extract! contact, :id, :uid, :contact_type_id, :first_name, :last_name, :civility, :address, :phone_number_1, :phone_number_2, :city, :contry, :email, :about, :status, :created_at, :updated_at
json.url contact_url(contact, format: :json)
