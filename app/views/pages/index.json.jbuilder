json.array!(@pages) do |page|
  json.extract! page, :id, :title, :heading, :content, :model_index
  json.url page_url(page, format: :json)
end
