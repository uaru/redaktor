json.extract! article, :id, :title, :notes, :created_at, :updated_at
json.url article_url(article, format: :json)
