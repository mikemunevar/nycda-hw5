json.extract! address, :id, :name, :street, :city, :postcode, :state_province, :country, :created_at, :updated_at
json.url address_url(address, format: :json)