json.extract! product, :id, :name, :short_description, :long_description, :price, :image_id, :created_at, :updated_at
json.url product_url(product, format: :json)