json.array!(@categories) do |category|
  json.extract! category, :id, :name, :profileId
  json.url category_url(category, format: :json)
end
