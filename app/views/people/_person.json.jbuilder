json.extract! person, :id, :seller, :buyer, :name, :email, :created_at, :updated_at
json.url person_url(person, format: :json)