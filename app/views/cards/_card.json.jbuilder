json.extract! card, :id, :first_name, :last_name, :company, :phone, :address1, :address2, :city, :state, :zip, :email, :created_at, :updated_at
json.url card_url(card, format: :json)
