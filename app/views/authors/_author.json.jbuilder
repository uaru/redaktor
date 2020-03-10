json.extract! author, :id, :name, :surname, :email, :slug, :notes, :created_at, :updated_at
json.url author_url(author, format: :json)
