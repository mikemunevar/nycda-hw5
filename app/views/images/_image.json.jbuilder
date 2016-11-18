json.extract! image, :id, :name, :location, :created_at, :updated_at
json.url image_url(image, format: :json)