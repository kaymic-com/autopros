json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :price, :position
  json.url service_url(service, format: :json)
end
