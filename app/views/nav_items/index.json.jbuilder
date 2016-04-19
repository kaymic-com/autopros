json.array!(@nav_items) do |nav_item|
  json.extract! nav_item, :id, :href, :text, :page_id, :position, :blank_target
  json.url nav_item_url(nav_item, format: :json)
end
