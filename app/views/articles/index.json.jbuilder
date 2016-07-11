json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :char_count, :URL, :private, :user_id
  json.url article_url(article, format: :json)
end
