json.extract! articledetail, :id, :title, :content, :article_id, :created_at, :updated_at
json.url articledetail_url(articledetail, format: :json)
