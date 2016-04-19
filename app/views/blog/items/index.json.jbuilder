json.array!(@blog_items) do |blog_item|
  json.extract! blog_item, :id, :title, :slug, :publish_date, :content
  json.url blog_item_url(blog_item, format: :json)
end
