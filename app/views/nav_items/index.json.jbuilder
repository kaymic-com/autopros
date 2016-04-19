json.array!(@nav_items) do |nav_item|
  json.extract! nav_item, :id, :href, :text, :page_id, :position, :blank_target
end
