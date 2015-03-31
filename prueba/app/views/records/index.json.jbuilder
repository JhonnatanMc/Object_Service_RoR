json.array!(@records) do |record|
  json.extract! record, :id, :name, :startDate, :endDate, :category
  json.url record_url(record, format: :json)
end
