json.extract! article, :id, :category_id, :title, :description, :author_id, :integer, :created_at, :updated_at
json.url article_url(article, format: :json)
