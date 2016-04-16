json.array!(@requests) do |request|
  json.extract! request, :id, :service_id, :day, :hour, :minute, :meridiem, :name, :email
  json.url request_url(request, format: :json)
end
