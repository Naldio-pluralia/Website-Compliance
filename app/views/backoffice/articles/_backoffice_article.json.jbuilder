json.extract! backoffice_article, :id, :title, :body, :published_at, :author_id, :created_at, :updated_at
json.url backoffice_article_url(backoffice_article, format: :json)
